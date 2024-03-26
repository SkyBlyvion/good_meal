import 'package:flutter/material.dart';
import 'package:good_meal/models/Constantes.dart';

class Branding extends StatelessWidget {
  const Branding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(p1, width: 40, height: 40,),
        Text(
          "La cuisine des Dieux",
          style: TextStyle(
            color: brandingColor,
            fontWeight: FontWeight.w900,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        )
      ],
    );
  }
}
