import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          body: Center(
            child: Text(
              'SplashView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      }
    );
  }
}