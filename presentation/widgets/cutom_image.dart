// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class CustomImageWidget extends StatelessWidget {
  final String? imgpath;
  final String? imgpathNet;
  final double width;
  final double height;
  final double? borderradius;
  final String? cardStyle;
  const  CustomImageWidget({
    Key? key,
     this.imgpath,
    required this.width,
    required this.height,
    this.borderradius,
    this.cardStyle,
     this.imgpathNet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
        borderRadius: borderradius != null ? cardStyle != null ? BorderRadius.only(topLeft: Radius.circular(borderradius!), topRight: Radius.circular(borderradius!)) : BorderRadius.circular(borderradius!) : BorderRadius.circular(0),
        image: DecorationImage(
          image: imgpath != null ? AssetImage(imgpath!) : NetworkImage(imgpathNet!) as ImageProvider,
         fit: BoxFit.fill,
        ),
      ),
    );
  }
}
