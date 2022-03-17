import 'package:flutter/material.dart';
import 'package:food_app/src/utils/constant.dart';
class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  SmallText({Key? key,this.color=const Color(0xFF979797),
    this.size=13,
    required this.text,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: "Dosis-Medium",
      ),
    );
  }
}
