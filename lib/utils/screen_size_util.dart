import 'package:flutter/material.dart';

class ScreenSizeUtil {
  static final ScreenSizeUtil _instance = ScreenSizeUtil._internal();
  late BuildContext context;
  static late double height;
  static late double width;
  factory ScreenSizeUtil() {
    return _instance;
  }

  ScreenSizeUtil._internal();

  void setContext(BuildContext context) {
    this.context = context;
    getHeight();
    getWidth();
  }

  void getHeight() {
    height = MediaQuery.of(context).size.height;
  }

  void getWidth() {
    width = MediaQuery.of(context).size.width;
  }
}
