// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  Color? iconColor;
  double size;
  IconData icon;
  IconWidget({
    Key? key,
    this.iconColor,
    required this.size,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(0.0),
      color: iconColor ?? Colors.white,
      icon: Icon(icon, size: size),
      onPressed: () {},
    );
  }
}
