import 'package:flutter/material.dart';
import 'package:formly/presentation/core/responsive_widget.dart';
import 'package:formly/presentation/widgets/common/scroll_widget.dart';
import 'package:formly/utils/screen_size_util.dart';

class QuestionListWidget extends StatefulWidget {
  const QuestionListWidget({super.key});

  @override
  State<QuestionListWidget> createState() => _QuestionListWidgetState();
}

class _QuestionListWidgetState extends State<QuestionListWidget> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: SizedBox(
        height: ScreenSizeUtil.absHeight * 0.9,
        child: const ScrollingView(
          children: [],
        ),
      ),
      smallScreen: Container(),
      mediumScreen: Container(),
    );
  }
}
