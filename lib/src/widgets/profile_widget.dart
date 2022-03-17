import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/app_icon.dart';

import '../utils/utils.dart';
import 'large_text_widget.dart';

class ProfileWidget extends StatelessWidget {
  final IconData appIcon;
 final LargeText bigText;
 final Color ?color;
  const ProfileWidget({Key? key,required this.bigText,required this.appIcon,  this.color=Colors.amber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white54,
      child: Padding(
        padding:  EdgeInsets.only(left: screenWidth(context,dividedBy: 25),
          top: screenHeight(context,dividedBy: 55),
          bottom: screenHeight(context,dividedBy: 55),

      ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: color,
              child: Icon(appIcon,color: Colors.white,),
            ),
            SizedBox(width: screenWidth(context,dividedBy: 35),),
            bigText
          ],
        ),
      ),
    );
  }
}
