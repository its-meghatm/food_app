import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/screens/home_page.dart';
import 'package:food_app/src/screens/main_food_page.dart';
import 'package:food_app/src/utils/utils.dart';
import 'package:food_app/src/widgets/app_icon.dart';
import 'package:food_app/src/widgets/expandable_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/constant.dart';
import '../widgets/add_remove_button.dart';
import '../widgets/app_column.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/large_text_widget.dart';
import '../widgets/small_text_widget.dart';

class FoodDetailScreen extends StatefulWidget {
  const FoodDetailScreen({Key? key}) : super(key: key);

  @override
  _FoodDetailScreenState createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
        Positioned(
          left: 0,
            right: 0,
            top: 0,
            child: Container(
              width: screenWidth(context,dividedBy: 1),
              height: screenHeight(context,dividedBy: 2.5),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage("assets/images/slider1.png")

                )
              ),
            )),
          Positioned(
            top: 37,
            left: 20,
              right: 20,
              child:
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              GestureDetector(
                onTap: (){
                  Get.to(()=>HomePage());
                },
                child: Appicons(bColors: Colors.white54,
                    iconColor: Colors.black45,
                    icons: Icons.arrow_back_ios),
              ),
              Appicons(bColors: Colors.white54,
                  iconColor: Colors.black45,
                  icons: Icons.shopping_cart)


            ],)),
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: screenHeight(context, dividedBy: 2.65),
              child: Container(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    AppColumn(text: "Chinese Side",),
                    SizedBox(height: screenHeight(context, dividedBy: 40),),
                    LargeText(text: "Introduce",color: Colors.grey),
                    SizedBox(height: screenHeight(context, dividedBy: 40),),
                    const Expanded(
                      child: SingleChildScrollView(
                          child: ExpandedText(
                              text: "Chicken Biryani is a savory chicken and rice dish  that includes layers of chicken, rice, and aromatics that are steamed together. The bottom layer of rice absorbs all the chicken juices as it cooks, giving it a tender texture and rich flavor, while the top layer of rice turns out white and fluffy. Buried in the Biryani, you’ll find whole cuts of succulent chicken bursting with flavor from the potent array of spices, herbs, and aromatics it’s marinated in.Whether you’re talking Arroz con Pollo, Hainanese Chicken Rice, or Oyako Donburi, chicken and rice is a classic pairing that has permeated culinary culture around the world. It makes sense that earlier in human history, this staple grain would be combined with a domesticated source of protein"),
                      ),
                    )
                  ],
                )
              ))
      ],),
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
          AddRemoveButton(),
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
          child: LargeText(text: "\$10 | Add to Cart",color: Colors.white,),)
          ],
        ),
      ),
    );
  }
}
