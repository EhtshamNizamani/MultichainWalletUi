// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:multichain_wallet_ui/constants.dart';

class WidthDrawScreen extends StatelessWidget {
  const WidthDrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: customText('WITHDRAW', Colors.white, 17.0),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: kPadding,
          child: Column(children: [
            Container(
              height: 104,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customText('Available Amount', fontColor, 14.0),
                  const Text(
                    '0 Olta',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  customText('\$0.0', fontColor, 13.0),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const inputFiled(
                hintText: 'Input Receiver address',
                icon: Icons.qr_code_2_outlined,
                color: kBackgroundColor),
            const SizedBox(height: 10),
            const inputFiled(
                hintText: 'Input Amount',
                icon: Icons.attach_money_outlined,
                color: kBackgroundColor),
            const SizedBox(height: 20),
            customText('≈ 0.0 USD', Colors.white, 16.0),
            const SizedBox(height: 20),
            const inputFiled(
                hintText: 'Enter Memo for receiver',
                icon: Icons.aspect_ratio,
                color: memoColor),
            SizedBox(
              height: Get.height * 0.17,
            ),
            customButton('SEND', isDark: false, onTap: () {})
          ]),
        ),
      ),
    );
  }
}

class inputFiled extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color color;
  const inputFiled({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(19)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 400,
        ),
        child: TextFormField(
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
              suffixIcon: Icon(
                icon,
                color: fontColor,
              ),
              hintText: hintText,
              hintStyle: const TextStyle(color: fontColor)),
        ),
      ),
    );
  }
}
