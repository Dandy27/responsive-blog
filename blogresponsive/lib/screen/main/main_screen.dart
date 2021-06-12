import 'package:blogresponsive/controllers/menu_controller.dart';
import 'package:blogresponsive/screen/constants.dart';
import 'package:blogresponsive/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: const HomeScreen(),
            )
          ],
        ),
      ),
    );
  }
}
