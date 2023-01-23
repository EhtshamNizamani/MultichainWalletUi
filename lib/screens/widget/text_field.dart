import 'package:flutter/material.dart';
import 'package:multichain_wallet_ui/constants.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: kBackgroundColor, borderRadius: BorderRadius.circular(19)),
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
              hintText: hintText,
              hintStyle: const TextStyle(color: fontColor)),
        ),
      ),
    );
  }
}
