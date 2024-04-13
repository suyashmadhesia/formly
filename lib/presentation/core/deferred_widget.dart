import 'package:flutter/material.dart';

class DeferredWidgetBuilder extends StatelessWidget {
  final Future future;
  final Widget child;
  final Widget loaderWidget;

  const DeferredWidgetBuilder({
    super.key,
    required this.future,
    required this.child,
    this.loaderWidget = const Center(
      child: CircularProgressIndicator(),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return child;
          }
          return loaderWidget;
        });
  }
}
