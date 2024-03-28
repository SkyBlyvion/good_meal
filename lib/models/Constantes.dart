import 'package:flutter/material.dart';
import 'package:good_meal/models/ButtonObject.dart';
import 'package:good_meal/models/Event.dart';
import 'package:good_meal/pages/HomePage.dart';
import 'package:good_meal/pages/NextPage.dart';

import '../widgets/HoverButton.dart';
import 'UrlClass.dart';

// définition des couleurs
Color appBarColor = const Color.fromRGBO(3, 169, 244, 1);
Color brandingColor = const Color.fromRGBO(255, 255, 255, 0.7);

// définir les chemins d'images
String p1 = "images/p1.jpg";
String p2 = "images/p2.jpg";
String p3 = "images/p3.jpg";
String p4 = "images/p4.jpg";
String p5 = "images/p5.jpg";
String p6 = "images/p6.jpg";
String p7 = "images/p7.jpg";
String p8 = "images/p8.jpg";
String p9 = "images/p9.jpg";
String p10 = "images/p10.jpg";
String p12 = "images/p12.jpg";

// gestion des boutons des menus
List<ButtonObject> menuButton = [
  ButtonObject(destination: HomePage(), label: "Ma cuisine"),
  ButtonObject(destination: NextPage(), label: "Mes recettes"),
  ButtonObject(destination: HomePage(), label: "Blog"),
];

// gestion des boutons du topstack
List<ButtonObject> containerButton = [
  ButtonObject(destination: HomePage(), label: "Telephone", icon: Icon(Icons.phone)),
  ButtonObject(destination: HomePage(), label: "Mail", icon: Icon(Icons.mail)),
  ButtonObject(destination: HomePage(), label: "Visio", icon: Icon(Icons.person)),
];

// liste de composants buttons pour le web
List<HoverButton> getCardHoverButton() =>
    containerButton.map((button) => HoverButton(button: button)).toList();

// liste de composants buttons pour le phone
List<FloatingActionButton> getFloating(BuildContext context) =>
    containerButton.map((button) =>
        FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return button.destination;
            }));
          },
            backgroundColor: appBarColor,
            heroTag: button.label,
            child: button.icon,
        )
    ).toList();

// lambda getmenubutton
List<HoverButton> getMenuButton() => menuButton.map(
    (btn) => HoverButton(button: btn)
).toList();

// tableau events
List<Event> events = [
  Event(name: "Groinfre 1", path: p3 ),
  Event(name: "Groinfre 2", path: p4 ),
  Event(name: "Groinfre 3", path: p5 ),
  Event(name: "Groinfre 4", path: p6 ),
  Event(name: "Groinfre 5", path: p7 ),
];

List<UrlClass> networks = [
  UrlClass(name: "Facebook", url: "https.//www.facebook.com"),
  UrlClass(name: "Instagram", url: "https.//www.instagram.com"),
  UrlClass(name: "Twitter", url: "https.//www.twitter.com"),

];