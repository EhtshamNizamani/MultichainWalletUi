import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/screens/sign_login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAll(const SignLoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width * 1,
        height: Get.height * 1,
        color: Colors.black,
        child: Center(
            child: Image(
          height: Get.height * .5,
          width: Get.width * 0.5,
          image: const AssetImage(
            'assets/images/image_olta.png',
          ),
        )),
      ),
    );
  }
}
