import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final Color? color;
  final EdgeInsets? padding;
  final double borderRadius;
  final bool isElevated;
  final List<BoxShadow> shadow;
  const ElevatedContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.color,
    this.padding,
    this.borderRadius = 14,
    this.isElevated = true,
    this.shadow = const [
      BoxShadow(
        color: Colors.black12,
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height ?? double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: shadow,
      ),
      child: child,
    );
  }
}

class RectangularIconContainer extends StatelessWidget {
  final Widget child;
  final Color? backgroungColor;
  final Color? shadowColor;
  final double height;
  final double width;
  const RectangularIconContainer({
    super.key,
    required this.child,
    this.backgroungColor,
    this.shadowColor,
    this.height = 50,
    this.width = 50,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedContainer(
      color: backgroungColor ?? Colors.grey.shade200,
      width: width,
      height: height,
      shadow: [
        BoxShadow(
          color: shadowColor ?? Colors.grey.shade100.withOpacity(0.4),
          blurRadius: 4,
          spreadRadius: 3,
          offset: const Offset(0, 3),
        ),
      ],
      child: child,
    );
  }
}
