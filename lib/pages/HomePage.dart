import 'package:flutter/material.dart';
import 'package:good_meal/models/MakeItResponsive.dart';

//statefull car besoin de cycle de vie et dynamisne au sein de la page
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // declarer variable size qui va recuperer la taille du contexte
    //composant est un objet de type size et recupere le context
    // ;pour terminer une action en dart
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    print(size.width);
    print(screenSize);
    // je remplace le placeholder par uns caffold et appbar
    return Scaffold(
      appBar: AppBar(title: const Text('test')),
      body: const Placeholder(),
    );
  }
}
