import 'package:flutter/material.dart';
import 'package:good_meal/models/MakeItResponsive.dart';
import 'package:good_meal/sections/ContactSection.dart';
import 'package:good_meal/widgets/PhoneBar.dart';
import 'package:good_meal/widgets/WebBar.dart';
import '../widgets/DrawerSmall.dart';

//statefull car besoin de cycle de vie et dynamisne au sein de la page
class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
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
          children: [
            Container(
              height: 150,
              child: Placeholder(),
            ),
            ContactSection(),
            Placeholder(),
          ],
        ),
      ),
    );
  }
}
