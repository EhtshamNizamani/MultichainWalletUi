import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/constants.dart';

import 'widget/deposit_withdraw_info.dart';
import 'widget/wallet_screen_icon.dart';

class TransictionScreen extends StatelessWidget {
  const TransictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        title: customText('Transaction', Colors.white, 17.0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height * 0.35,
              width: Get.width,
              padding: kPadding,
              decoration: const BoxDecoration(color: kBackgroundColor),
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: kBackgroundColor,
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/crypto.png',
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Balance',
                    style: TextStyle(
                        color: fontColor, fontSize: 14, fontFamily: 'poppins'),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '82,121.21 USD',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'poppins'),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 33,
                    width: Get.width * 0.35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.circular(11)),
                    child: const Text(
                      '0x58a4a1f1c6a.......fb1dd08',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'poppins'),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 97),
                    child: Row(
                      children: [
                        WalletScreenIcon(
                          icon: Icons.attach_money,
                          text: 'Buy',
                        ),
                        WalletScreenIcon(
                          icon: Icons.arrow_downward,
                          text: 'Recieve',
                        ),
                        WalletScreenIcon(
                          icon: Icons.arrow_upward,
                          text: 'Send',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const DepositWithDrawInfo(),
            const DepositWithDrawInfo(),
            const DepositWithDrawInfo(),
            const DepositWithDrawInfo(),
          ],
        ),
      ),
    );
  }
}
