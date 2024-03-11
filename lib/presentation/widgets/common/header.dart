import 'package:flutter/material.dart';
import 'package:formly/utils/screen_size_util.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget? bottom;

  const AppHeader({
    super.key,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, ScreenSizeUtil.height * 0.08);
}
