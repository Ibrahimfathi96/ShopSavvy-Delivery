import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_savvy_delivery/core/constants/color.dart';
import 'package:shop_savvy_delivery/view/screen/home.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.offAllNamed(HomeView.routeName);
      },
      icon: Icon(
        Icons.home_outlined,
        size: 36,
        color: AppColors.primaryDark,
      ),
    );
  }
}
