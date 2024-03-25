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
          title: Text("voici ma cuisine"),
        ),
      ),
    );
  }
}
