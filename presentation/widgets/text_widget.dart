// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*  
how to use
TextWidget(
          text: 'zedcom',
          textcolor: Colors.white,
          textsize: 20,
          fontWeight: FontWeight.normal,
        ),
*/
class TextWidget extends StatelessWidget {
  final String text;
  double? textsize;
  Color? textcolor;
  FontWeight? fontWeight;
  String? underline;

  TextWidget({
    Key? key,
    required this.text,
    this.textsize,
    this.textcolor,
    this.fontWeight,
    this.underline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.ubuntu(
        fontStyle: FontStyle.normal,
        fontSize: textsize,
        fontWeight: fontWeight ?? FontWeight.bold,
        textStyle: TextStyle(
          color: textcolor ?? Colors.black,
          decoration: underline != null
              ? TextDecoration.underline
              : TextDecoration.none,
        ),
      ),
      textAlign: TextAlign.center,
    );
  }
}
