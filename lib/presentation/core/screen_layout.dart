import 'package:flutter/material.dart';
import 'package:formly/presentation/widgets/common/header.dart';

class ScreenLayout extends StatelessWidget {
  final PreferredSizeWidget? bottom;
  final Widget? body;
  const ScreenLayout({
    super.key,
    this.bottom,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(bottom: bottom),
      backgroundColor: const Color(0xffE1E5EA),
      body: body,
    );
  }
}
