import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomeController extends GetxController {
  final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void openCloseSideMenu() {
    if (sideMenuKey.currentState!.isOpened) {
      sideMenuKey.currentState!.closeSideMenu();
    }
    else
    {
        sideMenuKey.currentState!.openSideMenu();
    }
  }
}
