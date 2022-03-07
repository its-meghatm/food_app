import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/small_text_widget.dart';

import '../utils/constant.dart';
import '../utils/utils.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundColor: Colors.amber,
          radius: 8,),
        SizedBox(width: screenWidth(context, dividedBy: 100),),
        SmallText(text: "Normal"),
        SizedBox(width: screenWidth(context, dividedBy: 30),),
        Icon(Icons.add_location,color: AppColors.mainColor,size: 18,),
        SmallText(text: "1.7 km"),
        SizedBox(width: screenWidth(context, dividedBy: 30),),
        const Icon(Icons.lock_clock,
            color: Colors.amber,size: 18),
        SmallText(text: "32 min"),
      ],);
  }
}
