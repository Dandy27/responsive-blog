import 'package:blogresponsive/controllers/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kDarkBlackColor,
        child: Obx(() => ListView(
              children: [
                DrawerHeader(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 3.5),
                    child: SvgPicture.asset('assets/icons/logo.svg'),
                  ),
                ),
                ...List.generate(
                    _controller.menuItems.length,
                    (index) => DrawerItem(
                        title: _controller.menuItems[index],
                        isActive: index == _controller.selectedIndex,
                        press: () {
                          _controller.setMenuIndex(index);
                        }))
              ],
            )),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;
  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      selectedTileColor: kPrimaryColor,
      selected: isActive,
      onTap: press,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
