import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/small_text_widget.dart';

import '../utils/constant.dart';
import '../utils/utils.dart';
import 'icon_text_widget.dart';
import 'large_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LargeText(text: text),
        SizedBox(height: screenHeight(context, dividedBy: 70),),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Wrap(
              children:List.generate(5, (index) =>
                  Icon(Icons.star,size: 13,color: AppColors.mainColor,)),
            ),
            SizedBox(width: screenWidth(context, dividedBy: 50),),
            SmallText(text: "4.5"),
            SizedBox(width: screenWidth(context, dividedBy: 50), ),
            SmallText(text: "1003 comments"),
          ],),
        SizedBox(height: screenHeight(context, dividedBy: 70),),
        IconTextWidget(),

      ],);
  }
}
