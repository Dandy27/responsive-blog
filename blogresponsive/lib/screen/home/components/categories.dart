import 'package:blogresponsive/screen/home/components/sidebar_container.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';


class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
        title: 'Categorias',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Category(
              title: "Artificial Inteligence",
              press: () {},
              numOfItems: 3,
            ),
            Category(
              title: "Augmented reality ",
              press: () {},
              numOfItems: 4,
            ),
            Category(
              title: "Development ",
              press: () {},
              numOfItems: 10,
            ),
            Category(
              title: "Flutter UI ",
              press: () {},
              numOfItems: 18,
            ), Category(
              title: "Technology ",
              press: () {},
              numOfItems: 12,
            ), Category(
              title: "UI/UX Design ",
              press: () {},
              numOfItems: 8,
            ),
          ],
        ));
  }
}

class Category extends StatelessWidget {
  final String title;
  final VoidCallback press;
  final int numOfItems;
  const Category({
    Key? key,
    required this.title,
    required this.numOfItems,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
          onPressed: press,
          child: Text.rich(TextSpan(
              text: title,
              style: const TextStyle(color: kDarkBlackColor),
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextSpan(
                    text: '($numOfItems)',
                    style: const TextStyle(color: kBodyTextColor))
              ]))),
    );
  }
}
