import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/utils.dart';
import 'large_text_widget.dart';

class AddRemoveButton extends StatelessWidget {
  final Color ?bColor;
  const AddRemoveButton({Key? key,  this.bColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:screenHeight(context, dividedBy: 55,),
          right: screenHeight(context, dividedBy: 55),
          top: screenHeight(context, dividedBy: 50),
          bottom: screenHeight(context, dividedBy: 50)
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenHeight(context, dividedBy: 45),),
          color: bColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.remove,color: Colors.black,),
          SizedBox(width: screenWidth(context, dividedBy: 45),),
          LargeText(text: "0",color: Colors.black,),
          SizedBox(width: screenWidth(context, dividedBy: 45),),
          Icon(Icons.add,color: Colors.black,),

        ],
      ),
    );
  }
}
