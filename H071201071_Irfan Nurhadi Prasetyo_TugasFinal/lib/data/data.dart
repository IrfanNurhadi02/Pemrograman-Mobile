import 'package:flutter/material.dart';

class ShoeData {
  int id;
  String name;
  String description;
  String price;
  String image;
  Color backgroundColor;
  String tagLine;

  ShoeData(
      {required this.description,
      required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.tagLine,
      required this.backgroundColor});
}

List<ShoeData> shoesData = [
  ShoeData(
    id: 1,
    description:
        "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
    name: "Adidas 4DFWD",
    image: "assets/images/Adidas_4DFWD.png",
    price: "Rp 3.500.000",
    tagLine: "Footwear to last you a lifetime.",
    backgroundColor: Color(0xffffeae9),
  ),
  ShoeData(
      id: 2,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Adidas Predator Mutator 20",
      image: "assets/images/Adidas-Predator-Mutator-20.png",
      price: "Rp 2.300.000",
      tagLine: "Designed for the freedom to walk.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData(
      id: 3,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Nike SuperRep Go",
      image: "assets/images/Nike1.png",
      price: "Rp 1.138.000",
      tagLine: "Go faster, go stronger, never stop.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData(
      id: 4,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Nike Kyrie ",
      image: "assets/images/Nike3.png",
      price: "Rp 1.979.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData(
      id: 5,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Nike Mercurial Superfly 8 ",
      image: "assets/images/Nike4.png",
      price: "Rp 2.165.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData(
      id: 6,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Ultraboost DNA X Beckham",
      image: "assets/images/Adidas2.png",
      price: "Rp 3.000.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData(
      id: 7,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "PUMA x DUNKIN' Triple Basketball",
      image: "assets/images/Puma1.png",
      price: "Rp 1.327.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData(
      id: 8,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Suede Classic XXI Men's Sneakers",
      image: "assets/images/Puma2.png",
      price: "Rp 1.300.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData(
      id: 9,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "FUTURE Z 1.3 FG/AG Soccer Cleats",
      image: "assets/images/Puma3.png",
      price: "Rp 28.000.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
];
