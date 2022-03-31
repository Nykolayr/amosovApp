import 'package:flutter/material.dart';

class AppColor {
  static const Color green = Color(0xFF1F8C4D);
  static const Color darkBroun = Color(0xFF4B0505);
  static const Color yellow = Color(0xFFFAEA0D);
  static const Color yellowLyght = Color(0xFFFCFAE5);
  static const Color lightgreen = Color(0xFFB8C6A3);
  static const Color red = Color(0xFFA61E1E);
  static const Color grey = Color(0xFFD9DADA);
  static const Color lightBlue = Color(0xFF7599C5);
  static const Color lightBlue2 = Color(0xFF0261BF);
  static const Color darkBlue = Color(0xFF031542);
  static const Color meddleGrey = Color(0xFF5A5954);
  static const Color darkgrey = Color(0xFF050505);
  static const Color darkgreen = Color(0xFF034C15);
  static const Color darkgreen2 = Color(0xFF034C15);
  static const Color greenMeedle = Color(0xFF99FF00);
  static const Color redDark = Color(0xFF470404);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0x00000000);
  static const LinearGradient gradDark = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [darkgrey, meddleGrey],
  );
  static const LinearGradient gradBlue = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [lightBlue, lightBlue2],
  );
  static const LinearGradient gradGreen = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [greenMeedle, darkgreen2, green],
  );
  static const LinearGradient gradRed = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [red, redDark],
  );
  static Border border = Border.all(
    width: 4,
    color: darkgreen,
  );
  static const BorderRadius borderRadiusTop15 = BorderRadius.vertical(
    top: Radius.circular(15),
  );
}

class AppText {
  static const TextStyle textDarkBlue18 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColor.darkBlue,
  );

  static const TextStyle textRed24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColor.red,
  );
  static const TextStyle textWhite18 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 18,
  );
  static const TextStyle textWhite22 = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
}
