import 'package:flutter/material.dart';
import 'package:formly/config/constants.dart' as constant;

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveLayout({
    super.key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  });

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > constant.maxTabletWidth;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width <= constant.maxTabletWidth &&
        MediaQuery.of(context).size.width > constant.maxMobileWidth;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= constant.maxMobileWidth;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      debugPrint("large screen ${constraints.maxWidth}");
      if (constraints.maxWidth > constant.maxTabletWidth) {
        return largeScreen;
      } else if (constraints.maxWidth <= constant.maxTabletWidth &&
          constraints.maxWidth > constant.maxMobileWidth) {
        return mediumScreen ?? largeScreen;
      }
      return smallScreen ?? largeScreen;
    });
  }
}
