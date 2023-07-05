import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_savvy_delivery/view/screen/home/home_page.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentPage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentIndex = 0;

  List<Widget> pagesList = [
    HomeBody(),
    Container(
      color: Colors.red,
      child: Text("Approved"),
    ),
    Container(
      color: Colors.red,
      child: Text("Settings"),
    ),
  ];

  List bottomAppbar = [
    {"title": "Pending", "icon": Icons.shopping_cart_checkout_outlined},
    {"title": "Approved", "icon": Icons.add_shopping_cart_outlined},
    {"title": "Settings", "icon": Icons.settings}
  ];

  @override
  changePage(int currentPage) {
    currentIndex = currentPage;
    update();
  }
}
