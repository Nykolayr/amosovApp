import 'package:flutter/material.dart';

class AppColor {
  static const Color green = Color(0xFF1F8C4D);
  static const Color darkgreen = Color(0xFF01471E);
  static const Color green2 = Color(0xFF04873B);
  static const Color green3 = Color(0xFF015E27);
  static const Color yellow = Color(0xFFFAEA0D);
  static const Color lightgreen = Color(0xFFE0F0C8);
  static const Color red = Color(0xFFA61E1E);
  static const Color grey = Color(0xFFD9DADA);
  static const Color darkBlue = Color(0xFF031542);
  static const Color darkgrey = Color(0xFF5A5954);
  static const Color greenMeedle = Color(0xFF99FF00);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0x00000000);
  static LinearGradient twoColorGradient({
    Alignment begin = Alignment.topCenter,
    Alignment end = Alignment.bottomCenter,
  }) {
    return LinearGradient(
      colors: const [
        green2,
        green3,
      ],
      begin: begin,
      end: end,
    );
  }

  static List<BoxShadow> borderGradientLight() {
    return [
      BoxShadow(
        color: green3,
        spreadRadius: 0.5,
        offset: Offset(0, -0.5),
      ),
      BoxShadow(
        color: green2,
        spreadRadius: 0.5,
        offset: Offset(0, 1),
      ),
    ];
  }

  static const LinearGradient gradGreen = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [green3, green],
  );

  static Border border = Border.all(
    width: 4,
    color: green3,
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
