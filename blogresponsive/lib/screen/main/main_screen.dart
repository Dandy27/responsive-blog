import 'package:blogresponsive/screen/constants.dart';
import 'package:blogresponsive/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            child: const HomeScreen(),

          )
        ],
      ),
    );
  }
}
