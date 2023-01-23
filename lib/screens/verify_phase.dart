import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/screens/home_screen.dart';

import '../constants.dart';
import 'widget/phase_textfield.dart';

class VerifyPhase extends StatelessWidget {
  const VerifyPhase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPadding.copyWith(left: 26, right: 26),
            child: Column(children: [
              SizedBox(height: Get.height * .05),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(fontSize: 20, fontFamily: 'poppins'),
                  children: <TextSpan>[
                    TextSpan(text: ' Enter your secret'),
                    TextSpan(
                        text: ' Recovery Phase',
                        style: TextStyle(color: kGradient2)),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Enter your 12 phrase code you just got from your wallet.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 13, fontFamily: 'poppins'),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: Get.height * 0.5,
                child: GridView.builder(
                    itemCount: 12,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 39,
                            mainAxisExtent: 60),
                    itemBuilder: (context, index) {
                      return ListView(
                        children: [
                          PhaseTextField(
                            index: index + 1,
                          )
                        ],
                      );
                    }),
              ),
              SizedBox(height: Get.height * 0.1),
              customButton(
                'Verify your Phrase ',
                isDark: false,
                onTap: () => Get.offAll(const HomeScreen()),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
