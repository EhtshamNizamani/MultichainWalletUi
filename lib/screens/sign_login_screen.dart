import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/constants.dart';
import 'package:multichain_wallet_ui/screens/login_screen.dart';
import 'package:multichain_wallet_ui/screens/signin_screen.dart';

class SignLoginScreen extends StatelessWidget {
  const SignLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: kPadding,
          child: Column(children: [
            Image.asset(
              'assets/images/image_olta.png',
              width: Get.width * 0.4,
              height: Get.height * 0.4,
            ),
            SizedBox(
              width: Get.width * 0.8,
              height: 48,
              child: const Text(
                'Fastest chain wallet, anytime, anywhere Your Asset, Your Control',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16, color: Colors.white, fontFamily: 'poppins'),
              ),
            ),
            SizedBox(
              height: Get.height * 0.25,
            ),
            customButton('SIGN IN',
                isDark: true, onTap: () => Get.to(const LoginUser())),
            const SizedBox(height: 19),
            customButton('CREATE AN ACCOUNT',
                isDark: false, onTap: () => Get.to(const SigninScreen())),
          ]),
        ),
      ),
    );
  }
}
