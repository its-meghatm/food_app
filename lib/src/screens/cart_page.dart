import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/routes/routes_helper.dart';
import 'package:food_app/src/utils/constant.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/utils.dart';
import '../widgets/add_remove_button.dart';
import '../widgets/app_icon.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/large_text_widget.dart';
import '../widgets/small_text_widget.dart';
import 'main_food_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Stack(
        children: [
          Positioned(
              top: 49,
              left: 20,
              right: 20,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  GestureDetector(
                    onTap: (){
                     Get.toNamed(RoutesHelper.initial);
                    },
                    child: Appicons(bColors: AppColors.mainColor,
                        iconColor: Colors.white,
                        icons: Icons.arrow_back_ios),
                  ),
                  SizedBox(width: screenWidth(context,dividedBy: 1.9),),
                  Appicons(bColors: AppColors.mainColor,
                      iconColor: Colors.white,
                      icons: Icons.home),
                  Appicons(bColors: AppColors.mainColor,
                      iconColor: Colors.white,
                      icons: Icons.shopping_cart),


                ],)),
          Positioned(
            top: screenHeight(context, dividedBy: 22),
            left: screenWidth(context, dividedBy: 45),
            right: screenWidth(context, dividedBy: 50),
            bottom: 0,
            child: Container(
              height: screenHeight(context, dividedBy: 1),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
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
                            height: screenHeight(context, dividedBy: 9),
                            width: screenWidth(context, dividedBy: 3.9),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0,bottom: 18.0,left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LargeText(text: "Chines Side"),
                                SmallText(text: ("its a super delicious one ")),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    LargeText(text: "\$3.33",color: Colors.deepOrangeAccent,),
                                  SizedBox(width: screenWidth(context,dividedBy: 4),),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left:screenHeight(context, dividedBy: 90,),
                                       // right: screenHeight(context, dividedBy: 90),
                                      //  top: screenHeight(context, dividedBy: 95),
                                      //  bottom: screenHeight(context, dividedBy: 95)
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(screenHeight(context, dividedBy: 45),),
                                        color: Colors.white70
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.remove,color: AppColors.iconColor1,),
                                        SizedBox(width: screenWidth(context, dividedBy: 55),),
                                        LargeText(text: "0",color: Colors.black,),
                                        SizedBox(width: screenWidth(context, dividedBy: 55),),
                                        Icon(Icons.add,color: AppColors.iconColor1,),

                                      ],
                                    ),
                                  )
                                  ],
                                )

                              ],
                            ),
                          ),

                        ],
                      ),
                    );
                  }
              ),
            ),
          )

        ]),
      bottomNavigationBar: Container(
        height: screenHeight(context, dividedBy: 7),
        padding: EdgeInsets.only(top:screenHeight(context, dividedBy: 70),
          left: screenHeight(context, dividedBy: 30),
          right: screenHeight(context, dividedBy: 30),
        ),
        decoration: BoxDecoration(color: Colors.grey[100],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(screenHeight(context, dividedBy: 15),),
              topRight: Radius.circular(screenHeight(context, dividedBy: 15),),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left:screenHeight(context, dividedBy: 50,),
                  right: screenHeight(context, dividedBy: 50),
                  top: screenHeight(context, dividedBy: 50),
                  bottom: screenHeight(context, dividedBy: 50)
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenHeight(context, dividedBy: 45),),
                  color: Colors.white
              ),
              child: LargeText(text: "\$ 3.33",color: AppColors.iconColor1,),),
            Container(
              padding: EdgeInsets.only(left:screenHeight(context, dividedBy: 55,),
                  right: screenHeight(context, dividedBy: 55),
                  top: screenHeight(context, dividedBy: 50),
                  bottom: screenHeight(context, dividedBy: 50)
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenHeight(context, dividedBy: 45),),
                  color: AppColors.iconColor1
              ),
              child: LargeText(text: "Checkout",color: Colors.white,),)
          ],
        ),
      ),

    );
  }
}
