import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multichain_wallet_ui/constants.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _isSwitched = false;
  Widget _listTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(
        icon,
        color: kGradient2,
      ),
      title: customText(title, kGradient2, 18.0),
      subtitle: customText(subtitle, Colors.white, 14.0),
      trailing: Switch(
        value: _isSwitched,
        onChanged: (value) {
          setState(() {
            _isSwitched = value;
          });
        },
        activeTrackColor: fontColor,
        activeColor: kGradient2,
        inactiveTrackColor: fontColor,
        inactiveThumbColor: kGradient2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: customText('SETTINGS', Colors.white, 18.0),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 40),
                _listTile(Icons.notifications, 'Notification',
                    'Turn App’s notification on or off.'),
                const SizedBox(height: 15),
                _listTile(
                    Icons.speaker, 'Sounds', 'Turn your app sound On or Off.'),
              ],
            ),
            customButton('SUBMIT', isDark: false, onTap: () {})
          ],
        ),
      ),
    );
  }
}
