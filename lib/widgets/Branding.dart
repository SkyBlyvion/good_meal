import 'package:flutter/material.dart';

class Branding extends StatelessWidget {
  const Branding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "La cuisine des Devs",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w900,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        )
      ],
    );
  }
}
