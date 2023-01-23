// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import '../../constants.dart';

class WalletScreenIcon extends StatelessWidget {
  String? text;
  IconData icon;
  WalletScreenIcon({
    Key? key,
    this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 42,
          width: 45,
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: kBackgroundColor, borderRadius: BorderRadius.circular(11)),
          child: IconButton(
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        Text(
          text!,
          style: const TextStyle(
              fontSize: 10, color: Colors.white, fontFamily: 'poppins'),
        )
      ],
    );
  }
}
