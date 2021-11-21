// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class WSizedBox extends StatelessWidget {
  var wval = 0.0;
  var hval = 0.0;
  WSizedBox({
    Key? key,
    required this.wval,
    required this.hval,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * wval,
        height: MediaQuery.of(context).size.height * hval);
  }
}
