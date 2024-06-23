import 'package:denis_food_app/screens/home/components/combo_list.dart';
import 'package:denis_food_app/screens/home/components/combo_list_second.dart';
import 'package:denis_food_app/screens/home/components/discount_widget.dart';
import 'package:flutter/material.dart';
import 'package:denis_food_app/components/search_box.dart';
import 'package:denis_food_app/screens/home/components/category_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        ComboListSecond(),
        DiscountWidget(),
      ],
    );
  }
}
