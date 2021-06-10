import 'package:blogresponsive/controllers/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class WebMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          children: List.generate(
            _controller.menuItens.length,
            (index) => WebMenuItem(
              text: _controller.menuItens[index],
              isActive: index == _controller.selectedIndex,
              press: () => _controller.setMenuIndex(index),
            ),
          ),
        ));
  }
}

// ignore: must_be_immutable
class WebMenuItem extends StatefulWidget {
   WebMenuItem({
    Key? key,
    required this.text,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  final String text;
  late bool isActive;
  final VoidCallback press;

  @override
  _WebMenuItemState createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;
  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if (!widget.isActive & _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: _borderColor(), width: 3))),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
