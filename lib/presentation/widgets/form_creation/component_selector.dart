import 'package:flutter/material.dart';
import 'package:formly/presentation/core/responsive_widget.dart';
import 'package:formly/presentation/widgets/common/containers.dart';
import 'package:formly/presentation/widgets/common/scroll_widget.dart';
import 'package:formly/presentation/widgets/common/text.dart';
import 'package:formly/utils/screen_size_util.dart';

class ComponentSelector extends StatefulWidget {
  const ComponentSelector({super.key});

  @override
  State<ComponentSelector> createState() => _ComponentSelectorState();
}

class _ComponentSelectorState extends State<ComponentSelector> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isDesktop(context)
        ? Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: ElevatedContainer(
              width: ScreenSizeUtil.width * 0.25,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(32),
                child: ScrollingView(
                  children: [
                    MulishText(
                      "Card Layout",
                      weight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ],
                ),
              ),
            ),
          )
        : Container();
  }
}
