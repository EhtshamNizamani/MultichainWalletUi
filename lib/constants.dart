import 'package:flutter/material.dart';

const kPadding = EdgeInsets.all(20);
const kBackgroundColor = Color.fromARGB(10, 255, 255, 255);

const fontColor = Color.fromARGB(125, 255, 255, 255);
const kGradient1 = Color(0Xff16ef72);
const kGradient2 = Color(0Xff0df4bf);
const memoColor = Color.fromARGB(70, 0, 92, 143);

Widget customButton(String text, {required bool isDark, required onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      alignment: Alignment.center,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              kGradient1,
              kGradient2,
            ],
          ),
          color: isDark ? kBackgroundColor : null),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 18,
            color: isDark ? Colors.white : Colors.black),
      ),
    ),
  );
}

Widget customText(String context, Color color, fontSize) {
  return Text(
    context,
    style: TextStyle(color: color, fontFamily: 'poppins', fontSize: fontSize),
  );
}

Widget gridViewButton(String text, {required onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      alignment: Alignment.center,
      height: 44,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11), color: kBackgroundColor),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontFamily: 'poppins', fontSize: 13, color: Colors.white),
      ),
    ),
  );
}
