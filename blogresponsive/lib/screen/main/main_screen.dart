import 'dart:typed_data';

import 'package:blogresponsive/screen/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/header.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: kDarkBlackColor,
            child: SafeArea(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Header(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
