import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/utils/constant.dart';
import 'package:food_app/src/utils/utils.dart';
import 'package:food_app/src/widgets/small_text_widget.dart';

class ExpandedText extends StatefulWidget {
  final String text;
  const ExpandedText({Key? key,required this.text}) : super(key: key);

  @override
  State<ExpandedText> createState() => _ExpandedTextState();
}

class _ExpandedTextState extends State<ExpandedText> {
  late String firstText;
  late String secondText;
  bool hiddenText=true;
   double textHeight=250;
  @override
void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text.length>textHeight){
      firstText=widget.text.substring(0,textHeight.toInt());
      secondText=widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      firstText=widget.text;
      secondText="";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondText.isEmpty?SmallText( text:firstText):Column(
        children: [
          SmallText(text: hiddenText?(firstText+"...."):(firstText+secondText)),
          InkWell(
            onTap: ()
            {
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: "Show more",color: AppColors.mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColors.mainColor,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
