import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/constants.dart';
import 'package:multichain_wallet_ui/screens/widget/text_field.dart';
import 'package:multichain_wallet_ui/screens/widget/textfiled_with_icon.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: customText('CONTACT US', Colors.white, 18.0),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: kPadding,
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(height: 15),
            const LoginField(hintText: 'Email'),
            const SizedBox(height: 15),
            const LoginField(hintText: 'Topic'),
            const SizedBox(height: 15),
            const TextfiledWithIcon(
                hintText: 'ATTACH FILE', icon: Icons.attach_file),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(10)),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400,
                ),
                child: TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(27),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      hintText: 'Message',
                      hintStyle: const TextStyle(color: fontColor)),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.14),
            customButton('SUBMIT', isDark: false, onTap: () {})
          ],
        )),
      ),
    );
  }
}
