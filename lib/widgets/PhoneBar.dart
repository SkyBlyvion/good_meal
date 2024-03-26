import 'package:flutter/material.dart';
import 'package:good_meal/models/Constantes.dart';
import 'package:good_meal/widgets/Branding.dart';

class PhoneBar extends AppBar{
  // constructeur
  PhoneBar(): super(
    title: Branding(fontTitleSize: 25,),
    centerTitle: true,
    backgroundColor: appBarColor,
  );
}