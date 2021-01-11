import 'package:flutter/material.dart';

class Pokemon {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;
  final String votes;
  final double scale;

  Pokemon({
    this.name,
    this.imagePath,
    this.description,
    this.colors,
    this.votes,
    this.scale,
  });
}

List pokemon = [
  Pokemon(
    name: "Greninja",
    imagePath: "assets/images/greninja_john3.png",
    description: "It creates throwing stars out of compressed water. When it spins them and throws them at high speed, these stars can split metal in two.",
    colors: [
      Colors.blue,
      Colors.blueAccent,
    ],
    votes: '140,559',
    scale: 1.5,
  ),
  Pokemon(
    name: "Lucario",
    imagePath: "assets/images/lucario_pngfind.png",
    description: "It controls waves known as auras, which are powerful enough to pulverize huge rocks. It uses these waves to take down its prey.",
    colors: [
      Colors.lightBlueAccent,
      Colors.blueGrey,
    ],
    votes: '102,259',
    scale: 2.625,
  ),
  Pokemon(
    name: "Mimikyu",
    imagePath: "assets/images/mimikyu_pngfind.png",
    description: "It wears a rag fashioned into a Pikachu costume in an effort to look less scary. Unfortunately, the costume only makes it creepier.",
    colors: [
      Color(0xfff0dc82),
      Color(0xffb5a642),
    ],
    votes: '99,077',
    scale: 2,
  ),
  Pokemon(
    name: "Charizard",
    imagePath: "assets/images/charizard_pngfind.png",
    description: "It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.",
    colors: [
      Colors.orange,
      Colors.deepOrange,
    ],
    votes: '93,968',
    scale: 1,
  ),
  Pokemon(
    name: "Umbreon",
    imagePath: "assets/images/umbreon_pngfind.png",
    description: "When this Pokémon becomes angry, its pores secrete a poisonous sweat, which it sprays at its opponent's eyes.",
    colors: [
      Colors.black54,
      Colors.black,
    ],
    votes: '67,062',
    scale: 2.5,
  ),
  Pokemon(
    name: "Sylveon",
    imagePath: "assets/images/sylveon_john3.png",
    description: "By releasing enmity-erasing waves from its ribbonlike feelers, Sylveon stops any conflict.",
    colors: [
      Colors.pink.shade200,
      Colors.redAccent.shade400,
    ],
    votes: '66,029',
    scale: 5,
  ),
  Pokemon(
    name: "Garchomp",
    imagePath: "assets/images/garchomp_pngfind.png",
    description: "Garchomp makes its home in volcanic mountains. It flies through the sky as fast as a jet airplane, hunting down as much prey as it can.",
    colors: [
      Color(0xff626e91),
      Color(0xff444866),
    ],
    votes: '61,877',
    scale: 3.5,
  ),
  Pokemon(
    name: "Rayquaza",
    imagePath: "assets/images/rayquaza_pngfind.png",
    description: "Rayquaza is said to have lived for hundreds of millions of years. Legends remain of how it put to rest the clash between Kyogre and Groudon.",
    colors: [
      Color(0xff83bb73),
      Color(0xff3a4f2c),
    ],
    votes: '60,939',
    scale: 1.5,
  ),
  Pokemon(
    name: "Gardevoir",
    imagePath: "assets/images/gardevoir_pngfind.png",
    description: "It has the power to predict the future. Its power peaks when it is protecting its Trainer.",
    colors: [
      Color(0xff29ab87),
      Color(0xff004953),
    ],
    votes: '60,596',
    scale: 4.5,
  ),
  Pokemon(
    name: "Gengar",
    imagePath: "assets/images/gengar_john3.png",
    description: "On the night of a full moon, if shadows move on their own and laugh, it must be Gengar's doing.",
    colors: [
      Color(0xff57477d),
      Color(0xff43283f),
    ],
    votes: '60,214',
    scale: 2,
  ),
];
