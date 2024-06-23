import 'package:flutter/material.dart';

import 'combo_item.dart';

class Combo {
  final String image;
  final String name;
  final String shopName;
  Combo({
    required this.image,
    required this.name,
    required this.shopName,
  });
  void hahaha(){}
}

class ComboListSecond extends StatelessWidget {
  ComboListSecond({
    super.key,
  });

  List<Combo> comboList = [
    Combo(
        image: 'assets/icons/burger_beer.svg',
        name: 'Burger & Beer',
        shopName: "MacDonald's"),
    Combo(
        name: 'Chinese & Noodles',
        shopName: "Wendys",
        image: "assets/icons/chinese_noodles.svg"),
    Combo(
      name: "Burger & Beer",
      shopName: "MacDonald's",
      image: "assets/icons/burger_beer.svg",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: comboList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return ComboItem(combo: comboList[index],);
        },
      ),
    );
  }
}
