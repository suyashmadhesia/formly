import 'package:flutter/material.dart';

class ScreenSizeUtil {
  static final ScreenSizeUtil _instance = ScreenSizeUtil._internal();
  late BuildContext context;
  static late double absHeight;
  static late double absWidth;
  factory ScreenSizeUtil() {
    return _instance;
  }

  ScreenSizeUtil._internal();

  void setContext(BuildContext context) {
    this.context = context;
  }

  double getHeight() {
    absHeight = MediaQuery.of(context).size.height;
    return absHeight / 1000;
  }

  double getWidth() {
    absWidth = MediaQuery.of(context).size.width;
    return absWidth / 100;
  }
}
