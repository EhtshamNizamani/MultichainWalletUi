// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants.dart';

// ignore: must_be_immutable
class PhaseTextField extends StatelessWidget {
  int index;
  PhaseTextField({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          color: kBackgroundColor, borderRadius: BorderRadius.circular(7)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 132,
        ),
        child: TextFormField(
          style: const TextStyle(color: Colors.white, fontFamily: 'poppins'),
          decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(top: 11.0, right: 0, left: 0),
                child: Text(
                  index.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              contentPadding: const EdgeInsets.all(14),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(7),
              ),
              hintText: 'Enter',
              hintStyle:
                  const TextStyle(color: fontColor, fontFamily: 'poppins')),
        ),
      ),
    );
  }
}
