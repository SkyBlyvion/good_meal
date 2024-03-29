import 'package:flutter/foundation.dart';

class Recette {
  int? id;
  String titre;
  String description;
  int duree;
  String ingredients;
  String image;

  Recette({
    this.id,
    required this.titre,
    required this.description,
    required this.duree,
    required this.ingredients,
    required this.image
  });
  
  factory Recette.fromMap(Map<String, dynamic> map) {
    return Recette(
      id: map['id'],
      titre: map['titre'],
      description: map['description'],
      duree: map['duree'],
      ingredients: map['ingredients'],
      image: map['image']
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titre': titre,
      'description': description,
      'duree': duree,
      'ingredients': ingredients,
      'image': image
    };
  }

  
}
