import 'package:flutter/material.dart';
import 'package:good_meal/models/Constantes.dart';

class LoginSection extends StatefulWidget {
  const LoginSection({super.key});

  @override
  State<LoginSection> createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {

  // instancie un objet login et pass Conrroller
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    // container contient le formulaire, on le place au centre
    return Container(
      padding: EdgeInsets.only(top: 50),
      width: size.width,
      child: Center(
        child: Card(
          color: appBarColor,
          child: Container(
            width:  300,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
