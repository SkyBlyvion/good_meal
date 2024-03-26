import 'package:flutter/material.dart';
import 'package:good_meal/widgets/Branding.dart';

class PhoneBar extends AppBar{
  // constructeur
  PhoneBar(): super(
    title: Branding(),
    centerTitle: true,
    backgroundColor: Colors.lightBlue,
  );
}