// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double borderradius;
  final Color bordercolor;
  final TextEditingController? controller;
  final double widh;
  final double height;
  final IconData icon;
  final Color iconColor;
  final String hinttext;
  final Color hintColor;
  final Color? onlyborder;
  final double fontsize;
  final Color? textcolor;
  //final FontWeight fontweight;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.borderradius,
    required this.bordercolor,
    this.controller,
    required this.widh,
    required this.height,
    required this.icon,
    required this.iconColor,
    required this.hinttext,
    required this.hintColor,
    this.onlyborder,
    required this.fontsize,
    this.textcolor,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: onlyborder ?? Colors.transparent),
        borderRadius: BorderRadius.circular(borderradius),
        color: bordercolor,
      ),
      width: MediaQuery.of(context).size.width * widh,
      height: MediaQuery.of(context).size.height * height,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
           suffixIcon: Icon(
              icon,
              color: iconColor,
            ) ,
            
            hintText: hinttext,
            hintStyle: TextStyle(
              color: hintColor,
              fontSize: fontsize,
            ),
            border: InputBorder.none),
        obscureText: obscureText,
        style: TextStyle(
          color: textcolor ?? hintColor,
        ),
      ),
    );
  }
}
