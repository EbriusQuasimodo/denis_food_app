import 'package:denis_food_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Combos {
  final String image;
  final String name;
  final String shopName;
  Combos({required this.name, required this.shopName, required this.image});
}

class ComboList extends StatelessWidget {
  ComboList({super.key});
  List<Combos> comboList = [
    Combos(
        image: 'assets/icons/burger_beer.svg',
        name: 'Burger & Beer',
        shopName: "MacDonald's"),
    Combos(
        name: 'Chinese & Noodles',
        shopName: "Wendys",
        image: "assets/icons/chinese_noodles.svg"),
    Combos(
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
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(8),
          itemCount: comboList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(8),
              //padding: EdgeInsets.all(16),
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(30),
                      child: ClipOval(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.yellow[200]),
                          child: SvgPicture.asset(comboList[index].image),
                        ),
                      ),
                    ),
                  ),
                  Text(comboList[index].name,style: TextStyle(fontSize: 14,color: kTextColor),),
                ],
              ),
            );
          }),
    );
  }
}
