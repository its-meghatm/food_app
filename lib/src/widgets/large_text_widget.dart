import 'package:flutter/material.dart';
class LargeText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  TextOverflow overflow;
   LargeText({Key? key,this.color,
     this.size=20,
     required this.text,
   this.overflow=TextOverflow.ellipsis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          color: color,
        fontSize: size,
        fontFamily: "Dosis-ExtraBold",
      ),
    );
  }
}
