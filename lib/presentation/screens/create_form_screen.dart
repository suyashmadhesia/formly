import 'package:flutter/material.dart';
import 'package:formly/presentation/core/deferred_widget.dart';
import 'package:formly/presentation/core/responsive_widget.dart';
import 'package:formly/presentation/core/screen_layout.dart';
import 'package:formly/presentation/widgets/common/containers.dart';
import 'package:formly/presentation/widgets/common/text.dart';
import 'package:formly/presentation/widgets/form_creation/component_selector.dart'
    deferred as component_selector;
import 'package:formly/presentation/widgets/form_creation/question_list.dart'
    deferred as question_list;
import 'package:formly/presentation/widgets/form_creation/question_preview.dart'
    deferred as question_preview;

class CreateFormScreen extends StatefulWidget {
  const CreateFormScreen({super.key});

  @override
  State<CreateFormScreen> createState() => _CreateFormScreenState();
}

class _CreateFormScreenState extends State<CreateFormScreen> {
  @override
  Widget build(BuildContext context) {
    Widget getTab(String label) {
      return Container(
        padding: const EdgeInsets.all(12),
        width: 100,
        child: Center(
          child: LatoText(
            label,
            weight: FontWeight.w700,
          ),
        ),
      );
    }

    return DefaultTabController(
      length: 3,
      child: ScreenLayout(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 350,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                padding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.zero,
                labelPadding: EdgeInsets.zero,
                indicatorWeight: 1,
                indicatorColor: Colors.grey.shade800,
                overlayColor:
                    MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
                tabs: [
                  getTab("Create"),
                  getTab("Share"),
                  getTab("Analytics"),
                ],
              ),
            ),
          ),
        ),
        body: ResponsiveLayout(
          largeScreen: ElevatedContainer(
            color: const Color(0xffF3F3F5),
            padding: ResponsiveLayout.isDesktop(context)
                ? const EdgeInsets.fromLTRB(16, 16, 16, 16)
                : const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DeferredWidgetBuilder(
                  future: question_list.loadLibrary(),
                  child: question_list.QuestionListWidget(),
                ),
                Expanded(
                  child: DeferredWidgetBuilder(
                    future: question_preview.loadLibrary(),
                    child: question_preview.FormQuestionPreview(),
                  ),
                ),
                DeferredWidgetBuilder(
                  future: component_selector.loadLibrary(),
                  child: component_selector.ComponentSelector(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
