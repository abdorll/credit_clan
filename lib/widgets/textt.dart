// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextOf extends StatelessWidget {
  TextOf(this.text, this.size, this.color, this.weight, this.align, {Key? key})
      : super(key: key);
  String text;
  Color color;
  TextAlign align;
  double size;
  FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: align,
        style: GoogleFonts.mulish(
            color: color, fontSize: size, fontWeight: weight));
  }
}
