import 'package:denis_food_app/constants.dart';
import 'package:denis_food_app/screens/home/components/combo_list_second.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComboItem extends StatelessWidget {
  final Combo combo;

  const ComboItem({super.key, required this.combo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10)
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox.fromSize(
              size: Size.fromRadius(40),
              child: ClipOval(
                child: Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.yellow[200],
                    child: SvgPicture.asset(
                      combo.image,
                      height: 30,
                      width: 30,
                    )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              combo.name,
              style: TextStyle(fontSize: 14, color: kTextColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              combo.shopName,
              style: TextStyle(fontSize: 12, color: kTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
