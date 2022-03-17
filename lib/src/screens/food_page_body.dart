import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/screens/food_details.dart';
import 'package:food_app/src/widgets/large_text_widget.dart';
import 'package:food_app/src/widgets/small_text_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/constant.dart';
import '../utils/utils.dart';
import '../widgets/icon_text_widget.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController _pageController= PageController(viewportFraction: 0.85);
  var currentPageValue= 0.0;
  double scaleFactor=0.8;
  @override
  void initState() {
    // TODO: implement initState
    _pageController.addListener(() {
      setState(() {
        currentPageValue=_pageController.page!;
      });
    });
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          child: GestureDetector(
            onTap: (){
              Get.to(()=>FoodDetailScreen());
            },
            child: PageView.builder(
              controller: _pageController,
              itemCount: 5,
                itemBuilder: (context,position){
return _builPageItem(position);
        }
        ),
          )
        ),
    DotsIndicator(
     dotsCount: 5,
      position: currentPageValue,
      decorator: const DotsDecorator(
        //color: AppColors.mainColor,
        activeColor: Colors.amber,
       activeSize: Size(18.0,9.0),
      ),
    ),
        SizedBox(height: screenHeight(context, dividedBy: 60),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              LargeText(text: 'Popular',),
              SizedBox(width: screenWidth(context, dividedBy: 20),
              ),
              SmallText(text: ("Food Pairing"),)
            ],
          ),
        ),
        //List of food and images
        Container(
          height: screenHeight(context, dividedBy: 1),
          child: ListView.builder(
            shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.white70,
              height: screenHeight(context, dividedBy: 7.5),
              width: screenWidth(context, dividedBy: 1.2),
              margin: const EdgeInsets.only(left: 15,top: 10,right: 15),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/slider1.png"),
                      fit: BoxFit.fill
                    )),
                    height: screenHeight(context, dividedBy: 7),
                    width: screenWidth(context, dividedBy: 2.9),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,bottom: 18.0,left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LargeText(text: "Chines Side"),
                        SmallText(text: ("its a super delicious one ")),
                        const IconTextWidget()
                      ],
                    ),
                  ),

                ],
              ),
            );
          }
    ),
        )

      ],
    );
  }

  Widget _builPageItem(int index) {
    Matrix4 matrix4=new Matrix4.identity();
    if(index==currentPageValue.floor()){
      var curScale=1-(currentPageValue-index)*(1-scaleFactor);
      matrix4=Matrix4.diagonal3Values(1, curScale, 1);
    }
    else if(index==currentPageValue.floor()+1){
      var curScale=scaleFactor+(currentPageValue-index+1)*(1-scaleFactor);
      matrix4=Matrix4.diagonal3Values(1, curScale, 1);


    }
    return Transform(
      transform: matrix4,
      child: Stack(
        children: [
          Container(
            height: 250,
  margin: const EdgeInsets.only(left: 5,right: 5),
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(30),
                image:  const DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/slider1.png")
                )
            ),

          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 110,
              margin: const EdgeInsets.only(left: 40,right: 40,bottom: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                boxShadow:const [
                   BoxShadow(
                     color: Color(0xFFe8e8e8),
                     blurRadius: 5.0,
                     offset: Offset(0, 5)
                   )
                ]
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 12,right: 12,top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  LargeText(text: "Chinese Side"),
                    SizedBox(height: screenHeight(context, dividedBy: 70),),
                  Row(children: [
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

                  ],),

      ),
              ),
            ),

        ],
      ),
    );
  }
}
