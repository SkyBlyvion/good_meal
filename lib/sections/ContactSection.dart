import 'package:flutter/material.dart';
import 'package:good_meal/models/Constantes.dart';
import 'package:good_meal/widgets/TitleText.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    // afin de récupérer la taille
    Size size = MediaQuery.of(context).size;
    return Container(
      color: appBarColor,
      width: size.width,
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Row( // titre de la section
            children: [
              TitleText(string: "Contact"),
              Expanded(child: Container())
            ],
          ),
          Row( // le contenu sur 2 colones
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column( // la premiere colone
                children: [

                ],
              ),
              Column( // la deuxiéme colone
                children: [
                  Text("Contactez-nous !"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
