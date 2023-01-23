// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/constants.dart';
import 'package:multichain_wallet_ui/screens/widget/crypto_tabbar.dart';

import 'widget/nfts_tabbar.dart';
import 'widget/wallet_screen_icon.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  WalletScreenState createState() => WalletScreenState();
}

class WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Container(
              height: Get.height * 0.4,
              width: Get.height,
              color: kBackgroundColor,
              padding: kPadding,
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 12, fontFamily: 'poppins'),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'WELCOME',
                        style:
                            TextStyle(color: fontColor, fontFamily: 'poppins')),
                    TextSpan(
                        text: ' DARRYL',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'poppins')),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: Get.height * 0.4,
                width: Get.width,
                padding: kPadding,
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundColor: kBackgroundColor,
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/profile_pic.png',
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Balance',
                      style: TextStyle(
                          color: fontColor,
                          fontSize: 14,
                          fontFamily: 'poppins'),
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
            ),
            const WalletMidleTabBar(),
          ],
        ),
      ),
    );
  }
}

class WalletMidleTabBar extends StatefulWidget {
  const WalletMidleTabBar({super.key});

  @override
  _WalletMidleTabBarState createState() => _WalletMidleTabBarState();
}

class _WalletMidleTabBarState extends State<WalletMidleTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Get.height * .4,
      bottom: 0,
      left: 0,
      right: 0,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 80,
            child: AppBar(
              backgroundColor: Colors.black,
              bottom: TabBar(
                controller: _controller,
                unselectedLabelColor: Colors.white,
                labelColor: kGradient1,
                indicatorColor: kGradient1,
                labelStyle:
                    const TextStyle(fontSize: 14, fontFamily: 'poppins'),
                tabs: const [
                  Tab(
                    text: 'Crypto',
                  ),
                  Tab(
                    text: 'NFTs',
                  ),
                ],
              ),
            ),
          ),

          // create widgets for each tab bar here
          Expanded(
            child: Padding(
              padding: kPadding,
              child: TabBarView(
                controller: _controller,
                children: [
                  // first tab bar view widget
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CryptoTabBar(),
                    ],
                  ),

                  // second tab bar view widget
                  Column(
                    children: const [NFTsTabBar()],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
