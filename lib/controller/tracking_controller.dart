import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class TrackingController extends GetxController {
  StreamSubscription<Position>? positionStream;
  getCurrentLocation() {
    positionStream =
        Geolocator.getPositionStream().listen((Position? position) {
      debugPrint("==================== CURRENT POSITION======================");
      debugPrint(position == null
          ? 'Unknown'
          : ' lat: ${position.latitude.toString()}, lang:${position.longitude.toString()}');
    });
  }

  @override
  void onInit() {
    getCurrentLocation();
    super.onInit();
  }
}
