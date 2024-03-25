import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/* composants stateles and statefull*/
/* composants entrée stateless */
void main() {
  runApp(const Cuisine());
}

/* stless + tab */
class Cuisine extends StatelessWidget {
  const Cuisine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon site de Cuisine",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "voici ma cuisine",
            style: TextStyle(
              letterSpacing: 4.0,
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Ceci est un premier texte"),
            const Text("Ceci est le titre"),
            const Text("3 eme texte"),
            Container(
              color: Colors.deepPurpleAccent,
              padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Text("gauche"),
                   Text("droite"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
