import 'package:flutter/material.dart';
import 'package:formly/presentation/core/responsive_widget.dart';
import 'package:formly/presentation/widgets/common/containers.dart';
import 'package:formly/presentation/widgets/common/scroll_widget.dart';
import 'package:formly/presentation/widgets/common/text.dart';
import 'package:formly/utils/screen_size_util.dart';
import 'package:enefty_icons/enefty_icons.dart';

class QuestionListWidget extends StatefulWidget {
  const QuestionListWidget({super.key});

  @override
  State<QuestionListWidget> createState() => _QuestionListWidgetState();
}

class _QuestionListWidgetState extends State<QuestionListWidget> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isDesktop(context)
        ? Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: ElevatedContainer(
              width: ScreenSizeUtil.width * 0.25,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: ScrollingView(
                  children: [
                    const LatoText(
                      "Cover",
                      weight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    SizedBox(
                      height: ScreenSizeUtil.height * .05,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          ElevatedContainer(
                            color: Colors.white,
                            height: 100,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RectangularIconContainer(
                                  child: Icon(
                                    EneftyIcons.book_2_bold,
                                    size: 18,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                                SizedBox(
                                  width: ScreenSizeUtil.width * 0.01,
                                ),
                                Expanded(
                                  child: MulishText(
                                    "Welcome to Formly create forms for survey in seconds",
                                    weight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenSizeUtil.height * .05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const LatoText(
                          "Questions",
                          weight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        Icon(
                          EneftyIcons.add_square_outline,
                          size: 20,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenSizeUtil.height * .05,
                    ),
                  ],
                ),
              ),
            ),
          )
        : Container();
  }
}
