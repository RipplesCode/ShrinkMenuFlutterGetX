import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      type: SideMenuType.slideNRotate,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Shrink Side Menu'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              controller.openCloseSideMenu();
            },
          ),
        ),
        body: Center(
            child: Text(
          'Side Menu',
          style: TextStyle(fontSize: 30),
        )),
      ),
      menu: buildMenu(),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(50),
      child: Column(children: [
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
          title: const Text("Home"),
          textColor: Colors.white,
          dense: true,
        ),
        ListTile(
          onTap: () {},
          leading:
              const Icon(Icons.verified_user, size: 20.0, color: Colors.white),
          title: const Text("Profile"),
          textColor: Colors.white,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.monetization_on,
              size: 20.0, color: Colors.white),
          title: const Text("Wallet"),
          textColor: Colors.white,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {},
          leading:
              const Icon(Icons.shopping_cart, size: 20.0, color: Colors.white),
          title: const Text("Cart"),
          textColor: Colors.white,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {},
          leading:
              const Icon(Icons.star_border, size: 20.0, color: Colors.white),
          title: const Text("Favorites"),
          textColor: Colors.white,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.settings, size: 20.0, color: Colors.white),
          title: const Text("Settings"),
          textColor: Colors.white,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
      ]),
    );
  }
}
