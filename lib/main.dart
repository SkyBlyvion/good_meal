import 'package:flutter/material.dart';
import 'package:good_meal/pages/LoginPage.dart';

import 'helper/DbHelper.dart';
import 'pages/HomePage.dart';

/* composants stateles and statefull*/
/* composants entrée stateless */
void main() async {
  // call DbHelper
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.instance.db;
  runApp(const Cuisine());
}

class Cuisine extends StatelessWidget {
  const Cuisine({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Awesome Flutter Project",
      // je crée un composant homepage stocké dans mon dossier pages
      // je le remplace par LoginPage() du dossier pages
      home: LoginPage(),
    );
  }
}

/* stless + tab */
/* class Cuisine extends StatelessWidget {
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ceci est le titre"),
              const Text("Ceci est un premier texte"),
              const Text("2 eme texte"),
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
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.asset("images/p1.jpg").image,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.asset("images/p2.jpg").image,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.asset("images/p3.jpg").image,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.asset("images/p4.jpg").image,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter),
                    ),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset("images/p5.jpg").image,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} */
