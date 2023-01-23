import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/constants.dart';
import 'package:multichain_wallet_ui/screens/widget/phase_textfield.dart';

import 'verify_phase.dart';

class SecretPhase1 extends StatefulWidget {
  const SecretPhase1({super.key});

  @override
  State<SecretPhase1> createState() => _SecretPhase1State();
}

class _SecretPhase1State extends State<SecretPhase1> {
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
                    TextSpan(
                        text: 'Write', style: TextStyle(color: kGradient1)),
                    TextSpan(text: ' down your'),
                    TextSpan(
                        text: ' Secret Recovery Phase',
                        style: TextStyle(color: kGradient2)),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'This your secret Recovery Phrase. Write it down on a paper and keep it in a safe place. You’ll be asked tore-eter this phrase on the next step.',
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
              SizedBox(height: Get.height * 0.07),
              customButton(
                'PROCEEDS',
                isDark: false,
                onTap: () => Get.to(const VerifyPhase()),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
