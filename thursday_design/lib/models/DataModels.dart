import 'package:flutter/material.dart';

class Data {
  String image;
  String image2;
  String name;
  String money;
  String describtion;
  final List<Color> colors;
  Data(
      {required this.image,
      required this.image2,
      required this.name,
      required this.money,
      required this.describtion,
      required this.colors});
}

List<Data> Lists = [
  Data(
      image: "images/design4.jpg",
      image2: "images/chairs5.jpg",
      name: "Soft Elements Jack",
      money: "\$57.00",
      describtion:
          "Soft Element Jack is a modern, comfortable lounge chair designed to offer both style and functionality. Typically featuring soft, plush cushions and ergonomic shapes, the Jack chair is perfect for adding comfort to a living room or office space. ",
      colors: [Colors.grey, Colors.orange, Colors.blue]),
  Data(
      image: "images/design10.png",
      image2: "images/chairs2.jpg",
      name: "Leset Galant",
      money: "\$64.00",
      describtion:
          "The Leset Galant is a sophisticated and contemporary sofa or armchair, known for its sleek and elegant design.",
      colors: [const Color.fromARGB(255, 255, 221, 170), Colors.blue]),
  Data(
      image: "images/design2.jpg",
      image2: "images/chairs3.jpg",
      name: "Chester Chair",
      money: "\$61.00",
      describtion:
          "The Chester Chair, inspired by the classic Chesterfield sofa, is a traditional, elegant piece of furniture characterized by its deep button tufting, rolled arms, and luxurious upholstery.",
      colors: [
        Colors.grey,
        const Color.fromARGB(255, 180, 115, 18),
      ]),
  Data(
      image: "images/design6.jpg",
      image2: "images/chairs4.jpg",
      name: "Avrora Chair",
      money: "\$64.50",
      describtion:
          "The Avrora Chair is a modern and stylish piece of furniture known for its ergonomic design and versatile aesthetic. It usually features a contemporary silhouette, combining smooth, flowing lines with comfort-focused features",
      colors: [Colors.grey, Colors.orange, Colors.blue]),
];
