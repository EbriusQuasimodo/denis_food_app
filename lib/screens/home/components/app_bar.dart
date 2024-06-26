import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:denis_food_app/constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/menu.svg'),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
          style: Theme.of(context).textTheme.titleLarge,
          //.copyWith(FontWeight: FontWeight.bold)
          children: [
            TextSpan(
              text: 'Punk',
              style: TextStyle(
                  color: ksecondaryColor, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: 'Food',
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ]),
    ),
    actions: <Widget>[
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/notification.svg')),
    ],
  );
}
