import 'package:flutter/material.dart';
import 'package:formly/presentation/core/deferred_widget.dart';
import 'package:formly/presentation/screens/create_form_screen.dart'
    deferred as create_form_screen;
import 'package:formly/utils/screen_size_util.dart';

void main() {
  runApp(const FormlyApp());
}

class FormlyApp extends StatelessWidget {
  const FormlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenSizeUtil screenSizeUtil = ScreenSizeUtil();
    screenSizeUtil.setContext(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeferredWidgetBuilder(
        future: create_form_screen.loadLibrary(),
        child: create_form_screen.CreateFormScreen(),
      ),
    );
  }
}
