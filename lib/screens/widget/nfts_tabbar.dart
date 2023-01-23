import 'package:flutter/material.dart';
import 'package:multichain_wallet_ui/constants.dart';

class NFTsTabBar extends StatelessWidget {
  const NFTsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 100,
        height: 80,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/nfts.png'),
        )),
      ),
      title: customText('Defi Land seed', Colors.white, 16.0),
      trailing: Container(
        height: 42,
        width: 89,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: kBackgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.share_outlined,
              color: Colors.white,
            ),
            const SizedBox(width: 4),
            customText('Share', Colors.white, 14.0)
          ],
        ),
      ),
    );
  }
}
