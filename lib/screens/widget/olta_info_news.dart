import 'package:flutter/material.dart';
import 'package:multichain_wallet_ui/constants.dart';

class OltaInfoNew extends StatelessWidget {
  const OltaInfoNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        leading: Container(
          width: 114,
          height: 92,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/Rectangle_4.png'))),
        ),
        title: customText('OLTA News', Colors.white, 16.0),
        subtitle: customText(
            'OLTA coin can be traded with OLTA wallet, Its very simple ',
            fontColor,
            14.0),
      ),
    );
  }
}
