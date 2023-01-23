import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/screens/signin_screen.dart';

import '../constants.dart';
import 'widget/text_field.dart';

class LoginUser extends StatelessWidget {
  const LoginUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: kPadding,
          child: SingleChildScrollView(
            child: Column(children: [
              Image.asset(
                'assets/images/image_olta.png',
                width: Get.width * 0.4,
                height: Get.height * 0.4,
              ),
              SizedBox(height: Get.height * 0.1),
              const LoginField(
                hintText: 'Enter your Email',
              ),
              const SizedBox(height: 19),
              const LoginField(
                hintText: 'Password',
              ),
              const SizedBox(height: 19),
              customButton(
                'LOG IN',
                isDark: false,
                onTap: () => Get.to(const SigninScreen()),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
