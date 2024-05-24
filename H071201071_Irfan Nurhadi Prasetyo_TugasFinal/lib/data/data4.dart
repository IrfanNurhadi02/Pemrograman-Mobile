import 'package:flutter/material.dart';

class ShoeData4 {
  int id;
  String name;
  String description;
  String price;
  String image;
  Color backgroundColor;
  String tagLine;

  ShoeData4(
      {required this.description,
      required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.tagLine,
      required this.backgroundColor});
}

List<ShoeData4> shoesData4 = [
  ShoeData4(
      id: 1,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "PUMA x DUNKIN' Triple Basketball",
      image: "assets/images/Puma1.png",
      price: "Rp 1.327.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData4(
      id: 2,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Suede Classic XXI Men's Sneakers",
      image: "assets/images/Puma2.png",
      price: "Rp 1.300.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData4(
      id: 3,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "FUTURE Z 1.3 FG/AG Soccer Cleats",
      image: "assets/images/Puma3.png",
      price: "Rp 28.000.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
];
