import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/constants.dart';

class DepositScreen extends StatelessWidget {
  const DepositScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: customText('DEPOSIT', Colors.white, 17.0),
      ),
      body: SizedBox(
        height: Get.height * 1,
        width: Get.width * 1,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 30),
          const Image(
            image: AssetImage('assets/images/qr.png'),
            width: 200,
            height: 200,
          ),
          customText('Your OLTA Address', Colors.white, 18.0),
          const SizedBox(height: 15),
          Container(
            height: 70,
            margin: const EdgeInsets.only(right: 20, left: 20, bottom: 5),
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.circular(19)),
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
                    hintText: 'bc1qxy2kgdygjrsqtzq2n0yrf2493',
                    hintStyle: const TextStyle(color: fontColor)),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.copy,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              customText('Copy', Colors.white, 16.0)
            ],
          )
        ]),
      ),
    );
  }
}
