// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:multichain_wallet_ui/constants.dart';
import 'package:multichain_wallet_ui/screens/info_screen.dart';
import 'package:multichain_wallet_ui/screens/wallet_screen.dart';

import 'dapps_screen.dart';
import 'user_profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const WalletScreen(),
    const InfoScreen(),
    const DappsScreen(),
    const UserProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 1.0, color: fontColor))),
        child: BottomNavigationBar(
          backgroundColor: kBackgroundColor,
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: kBackgroundColor,
              icon: Icon(Icons.wallet_outlined),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              backgroundColor: kBackgroundColor,
              icon: Icon(Icons.info_outline),
              label: 'Info',
            ),
            BottomNavigationBarItem(
              backgroundColor: kBackgroundColor,
              icon: Icon(Icons.web),
              label: 'DApps',
            ),
            BottomNavigationBarItem(
              backgroundColor: kBackgroundColor,
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: kGradient1,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
