import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItens =>
      ['Cases', 'Services', 'About Us', 'Carees', 'Blog', 'Contact'];

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
