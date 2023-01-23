// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import 'widget/olta_info_news.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.black,
            title: const Text(
              'INFO',
              textAlign: TextAlign.center,
            )),
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                    height: Get.height * .17,
                    child: const Image(
                      image: AssetImage('assets/images/vector2.png'),
                    )),
                Container(
                  height: Get.height * .2,
                  decoration: const BoxDecoration(
                      color: kBackgroundColor,
                      image: DecorationImage(
                        image: AssetImage('assets/images/vone.png'),
                      )),
                ),
                Positioned(
                  top: Get.height * 0.045,
                  left: 119,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 2, color: fontColor)),
                  ),
                ),
                Positioned(
                  top: Get.height * 0.05,
                  child: Container(
                    width: Get.width,
                    height: 1.5,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(10, 109, 36, 228),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          width: 0.5,
                          color: const Color.fromARGB(40, 109, 36, 228),
                        )),
                  ),
                ),
                Positioned(
                  left: 123,
                  child: Container(
                    width: 1.5,
                    height: Get.height * 0.37,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(10, 109, 36, 228),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          width: 0.5,
                          color: const Color.fromARGB(40, 109, 36, 228),
                        )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: SizedBox(
                height: 40,
                width: 391,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customText('1D', Colors.white, 12.0),
                    Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: kGradient1),
                        child: customText('7D', Colors.black, 12.0)),
                    customText('1M', Colors.white, 12.0),
                    customText('3M', Colors.white, 12.0),
                    customText('1Y', Colors.white, 12.0),
                    customText('5Y', Colors.white, 12.0),
                    const Icon(
                      Icons.calendar_month_outlined,
                      size: 12,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const OltaInfoNew(),
            const OltaInfoNew(),
            const OltaInfoNew(),
            const OltaInfoNew(),
          ],
        ),
      ),
    );
  }
}
