import 'package:flutter/material.dart';

class ShoeData2 {
  int id;
  String name;
  String description;
  String price;
  String image;
  Color backgroundColor;
  String tagLine;

  ShoeData2(
      {required this.description,
      required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.tagLine,
      required this.backgroundColor});
}

List<ShoeData2> shoesData2 = [
  ShoeData2(
    id: 1,
    description:
        "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
    name: "Adidas 4DFWD",
    image: "assets/images/Adidas_4DFWD.png",
    price: "Rp 3.500.000",
    tagLine: "Footwear to last you a lifetime.",
    backgroundColor: Color(0xffffeae9),
  ),
  ShoeData2(
      id: 2,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Adidas Predator Mutator 20",
      image: "assets/images/Adidas-Predator-Mutator-20.png",
      price: "Rp 2.300.000",
      tagLine: "Designed for the freedom to walk.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData2(
      id: 3,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Ultraboost DNA X Beckham",
      image: "assets/images/Adidas2.png",
      price: "Rp 3.000.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
];
