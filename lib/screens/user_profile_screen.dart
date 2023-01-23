import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/constants.dart';
import 'package:multichain_wallet_ui/screens/contact_us_screen.dart';
import 'package:multichain_wallet_ui/screens/setting_screen.dart';

import 'widget/textfiled_with_icon.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  Widget _container(IconData icon, String text) {
    return Container(
        height: 70,
        padding: kPadding,
        margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
        decoration: BoxDecoration(
            color: kBackgroundColor, borderRadius: BorderRadius.circular(19)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(width: 20),
              customText(text, fontColor, 16.0)
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/profile_pic.png'),
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                customText('DARRYL M', Colors.white, 16.0),
                customText('Example@Gmail.com', fontColor, 14.0),
                const SizedBox(height: 8),
                Container(
                  width: 163,
                  height: 56,
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: customButton('Reset Passowrd',
                      isDark: true, onTap: () {}),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: Get.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customText('Referral ID', fontColor, 12.0),
                            customText('xxxxxxx', Colors.white, 14.0),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.copy,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 10),
                            customText('Copy', Colors.white, 14.0),
                          ],
                        )
                      ]),
                ),
                GestureDetector(
                  onTap: () => Get.to(const SettingScreen()),
                  child: _container(Icons.settings, 'Setting'),
                ),
                GestureDetector(
                  onTap: () => Get.to(const ContactUsScreen()),
                  child: _container(
                    Icons.message_outlined,
                    'Contact us',
                  ),
                ),
                _container(Icons.star_border_outlined, 'Rate Us'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
