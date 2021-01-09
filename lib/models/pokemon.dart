import 'package:flutter/material.dart';

class Pokemon {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;

  Pokemon({
    this.name,
    this.imagePath,
    this.description,
    this.colors,
  });
}

List pokemon = [
  Pokemon(
    name: "Charizard",
    imagePath: "assets/images/iron_man.png",
    description: "Hello World",
    colors: [
      Colors.orange,
      Colors.deepOrangeAccent,
    ],
  ),
  Pokemon(
    name: "Pinky",
    imagePath: "assets/images/iron_man.png",
    description: "pinnu",
    colors: [
      Colors.pink.shade200,
      Colors.redAccent.shade400,
    ],
  ),
];
