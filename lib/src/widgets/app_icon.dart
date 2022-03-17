import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appicons extends StatelessWidget {
  final IconData icons;
  final Color bColors;
  final Color iconColor;
  final double size;

  const Appicons({Key? key,   this.size=17,required this.bColors,required this.iconColor,required this.icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(child:
    Center(
      child: Icon(icons,
        color: iconColor,
        size: size,

      ),
    ),
      radius: 18,
      backgroundColor: bColors,

    );
  }
}
