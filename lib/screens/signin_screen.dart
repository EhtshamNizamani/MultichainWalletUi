import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/screens/secret_phase_1.dart';

import '../constants.dart';
import 'widget/text_field.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
                hintText: 'Enter username',
              ),
              const SizedBox(height: 19),
              const LoginField(
                hintText: 'Enter your Email',
              ),
              const SizedBox(height: 19),
              const LoginField(
                hintText: 'Password',
              ),
              const SizedBox(height: 19),
              const LoginField(
                hintText: 'Re-Type Password',
              ),
              const SizedBox(height: 19),
              customButton(
                'SIGN IN',
                isDark: false,
                onTap: () => Get.to(const SecretPhase1()),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
