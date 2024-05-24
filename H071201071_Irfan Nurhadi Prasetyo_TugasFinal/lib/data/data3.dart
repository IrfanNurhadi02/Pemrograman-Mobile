import 'package:flutter/material.dart';

class ShoeData3 {
  int id;
  String name;
  String description;
  String price;
  String image;
  Color backgroundColor;
  String tagLine;

  ShoeData3(
      {required this.description,
      required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.tagLine,
      required this.backgroundColor});
}

List<ShoeData3> shoesData3 = [
  ShoeData3(
      id: 1,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Nike SuperRep Go",
      image: "assets/images/Nike1.png",
      price: "Rp 1.138.000",
      tagLine: "Go faster, go stronger, never stop.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData3(
      id: 2,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Nike Kyrie ",
      image: "assets/images/Nike3.png",
      price: "Rp 1.979.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData3(
      id: 3,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Nike Mercurial Superfly 8 ",
      image: "assets/images/Nike4.png",
      price: "Rp 2.165.000",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
];
