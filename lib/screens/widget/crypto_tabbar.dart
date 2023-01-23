import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/constants.dart';

import '../transiction_screen.dart';

class CryptoTabBar extends StatelessWidget {
  const CryptoTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 102,
        decoration: BoxDecoration(
            color: kBackgroundColor, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () => Get.to(const TransictionScreen()),
          contentPadding: kPadding,
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/crypto.png'),
          ),
          title: customText('OLTA', Colors.white, 20.0),
          subtitle: customText('OLTA COIN', fontColor, 16.0),
          trailing: SizedBox(
            width: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    customText('0.0', fontColor, 20.0),
                    customText('\$0.0000018', Colors.blue, 16.0),
                  ],
                ),
                const SizedBox(width: 8),
                customText('>', Colors.white, 40.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
