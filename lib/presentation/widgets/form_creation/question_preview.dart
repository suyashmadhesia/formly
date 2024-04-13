import 'package:flutter/material.dart';
import 'package:formly/presentation/core/responsive_widget.dart';
import 'package:formly/presentation/widgets/common/containers.dart';

class FormQuestionPreview extends StatefulWidget {
  const FormQuestionPreview({super.key});

  @override
  State<FormQuestionPreview> createState() => _FormQuestionPreviewState();
}

class _FormQuestionPreviewState extends State<FormQuestionPreview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveLayout.isDesktop(context)
          ? const EdgeInsets.fromLTRB(16, 16, 16, 16)
          : const EdgeInsets.all(0),
      child: const ElevatedContainer(
        width: double.infinity,
        color: Colors.white,
        child: SizedBox(),
      ),
    );
  }
}
