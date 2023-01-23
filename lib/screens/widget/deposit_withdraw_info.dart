import 'package:flutter/material.dart';
import 'package:multichain_wallet_ui/constants.dart';

class DepositWithDrawInfo extends StatelessWidget {
  const DepositWithDrawInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: customText('MAY 06, 02:23 am', fontColor, 12.0),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Container(
              height: 42,
              width: 45,
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(11)),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            title: customText('Deposit', Colors.white, 14.0),
            subtitle: customText('Singed', kGradient1, 12.0),
            trailing: customText('Olta', Colors.white, 14.0),
          )
        ],
      ),
    );
  }
}
