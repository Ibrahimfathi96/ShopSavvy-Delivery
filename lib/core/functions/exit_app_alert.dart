import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> exitAppAlert() {
  Get.defaultDialog(
    title: "50".tr,
    middleText: "51".tr,
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text(
          "52".tr,
        ),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text(
          "53".tr,
        ),
      ),
    ],
  );
  return Future.value(true);
}
