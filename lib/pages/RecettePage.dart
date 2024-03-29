import 'package:flutter/material.dart';
import 'package:good_meal/models/Constantes.dart';
import 'package:good_meal/models/MakeItResponsive.dart';
import 'package:good_meal/sections/CarouselSection.dart';
import 'package:good_meal/sections/ContactSection.dart';
import 'package:good_meal/widgets/PhoneBar.dart';
import 'package:good_meal/widgets/WebBar.dart';
import '../helper/DbHelper.dart';
import '../models/Utilisateur.dart';
import '../widgets/DrawerSmall.dart';

//statefull car besoin de cycle de vie et dynamisne au sein de la page
class RecettePage extends StatefulWidget {
  const RecettePage({super.key});

  @override
  State<RecettePage> createState() => _RecettePageState();
}

class _RecettePageState extends State<RecettePage> {

  List<Utilisateur> users = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialize();
  }

  Future initialize() async {
    users = await DbHelper.instance.getUsers();
    if(users.isEmpty){
      // print("la table est vide");
      Utilisateur usertest = Utilisateur(nom: 'toto', prenom: 'toto', login: 'toto.toto', pass: generateMd5('toto@24'));
      await DbHelper.instance.insertUser(usertest);
    }
    setState(() {
      users = users;
    });
  }


  @override
  Widget build(BuildContext context) {
    // declarer variable size qui va recuperer la taille du contexte
    //composant est un objet de type size et recupere le context
    // ;pour terminer une action en dart
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    print(size.width);
    print(screenSize);
    // je remplace le placeholder par un scaffold et appbar
    return Scaffold(
      appBar: (screenSize == ScreenSize.small) ? PhoneBar() : WebBar(size: size),
      drawer: DrawerSmall(), // composant de menu pour tel
      body: SingleChildScrollView(
        child: Column(
          children: users.map((user) => Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(user.nom),
                    Text(user.prenom),
                  ],
                ),
                Text(user.login),
                Text(user.pass)
              ],
            ),
          )).toList()
        ),
      ),
    );
  }
}
