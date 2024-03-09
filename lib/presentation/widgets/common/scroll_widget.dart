import 'package:flutter/material.dart';

class ScrollingView extends StatefulWidget {
  final List<Widget> children;
  final Axis axis;
  const ScrollingView({
    super.key,
    required this.children,
    this.axis = Axis.vertical,
  });

  @override
  State<ScrollingView> createState() => _ScrollingViewState();
}

class _ScrollingViewState extends State<ScrollingView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      controller: _scrollController,
      child: Padding(
        padding: const EdgeInsets.all(
            8.0), // TODO: handle this padding correctly and only from the horizontal
        child: ListView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: widget.axis,
          children: widget.children,
        ),
      ),
    );
  }
}
