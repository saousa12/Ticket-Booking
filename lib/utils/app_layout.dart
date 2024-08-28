import 'package:flutter/material.dart';

class AppLayout {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getHeight(BuildContext context, double pixels) {
    double screenHeight = getSize(context).height;
    double x = screenHeight / pixels;
    return screenHeight / x;
  }

  static double getWidth(BuildContext context, double pixels) {
    double screenWidth = getSize(context).width;
    double x = screenWidth / pixels;
    return screenWidth / x;
  }
}
