import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MulishText extends StatelessWidget {
  final String label;
  final FontWeight weight;
  final double fontSize;
  final Color fontColor;
  final TextAlign alignment;

  const MulishText(
    this.label, {
    super.key,
    this.weight = FontWeight.normal,
    this.fontColor = Colors.black,
    this.fontSize = 16.0,
    this.alignment = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: alignment,
      style: GoogleFonts.mulish(
        fontSize: fontSize,
        fontWeight: weight,
        color: fontColor,
      ),
    );
  }
}

class LatoText extends StatelessWidget {
  final String label;
  final FontWeight weight;
  final double fontSize;
  final Color fontColor;
  final TextAlign alignment;

  const LatoText(
    this.label, {
    super.key,
    this.weight = FontWeight.normal,
    this.fontColor = Colors.black,
    this.fontSize = 16.0,
    this.alignment = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: alignment,
      style: GoogleFonts.mulish(
        fontSize: fontSize,
        fontWeight: weight,
        color: fontColor,
      ),
    );
  }
}

class MontserratText extends StatelessWidget {
  final String label;
  final FontWeight weight;
  final double fontSize;
  final Color fontColor;
  final TextAlign alignment;

  const MontserratText(
    this.label, {
    super.key,
    this.weight = FontWeight.normal,
    this.fontColor = Colors.black,
    this.fontSize = 16.0,
    this.alignment = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: alignment,
      style: GoogleFonts.mulish(
        fontSize: fontSize,
        fontWeight: weight,
        color: fontColor,
      ),
    );
  }
}
