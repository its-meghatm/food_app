import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/utils/constant.dart';
import 'package:food_app/src/widgets/app_textfield.dart';
import 'package:food_app/src/widgets/large_text_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/utils.dart';

class SignUpPage extends StatelessWidget {

  const SignUpPage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailEditingController=TextEditingController();
    var passwordEditingController=TextEditingController();
    var signUpImages=[
      "t.png",
      "f.png",
      "g.png"
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: screenHeight(context,dividedBy: 25),),
              Center(
                child: Container(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/spl.png"),
                  ),
                ),
              ),
              SizedBox(height: screenHeight(context,dividedBy: 35),),
              AppTextField(
                editingController: emailEditingController,
                hintText: "Email",
                iconData: Icons.mail,
              ),
              SizedBox(height: screenHeight(context,dividedBy: 30),),
              AppTextField(
                editingController: passwordEditingController,
                hintText: "Password",
                iconData: Icons.password,
              ),
              SizedBox(height: screenHeight(context,dividedBy: 30),),
              AppTextField(
                editingController: passwordEditingController,
                hintText: "Name",
                iconData: Icons.person,
              ),
              SizedBox(height: screenHeight(context,dividedBy: 30),),
              AppTextField(
                editingController: passwordEditingController,
                hintText: "Phone Number",
                iconData: Icons.phone,
              ),
              SizedBox(height: screenHeight(context,dividedBy: 30),),
              Container(
                width: screenWidth(context,dividedBy: 2.6),
                height: screenHeight(context,dividedBy: 15),
                //color: Colors.red,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.iconColor1
                ),
                child: Center(child: LargeText(text: "Sign Up",color: Colors.white,)),
              ),
              SizedBox(height: screenHeight(context,dividedBy: 65),),
              RichText(
                  text: TextSpan(
                    recognizer: TapGestureRecognizer()..onTap=(){
                      Get.back();
                    },
                  text: "Already have an Account?",
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: screenHeight(context,dividedBy: 60)
                  ))
              ),
              SizedBox(height: screenHeight(context,dividedBy: 65),),
              RichText(
                  text: TextSpan(
                      recognizer: TapGestureRecognizer()..onTap=(){
                        Get.back();
                      },
                      text: "Sign up using one of this following method",
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: screenHeight(context,dividedBy: 60)
                      ))
              ),
              SizedBox(height: screenHeight(context,dividedBy: 65),),
              Wrap(
                children: List.generate(3, (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: screenHeight(context,dividedBy: 40),
                    backgroundImage: AssetImage("assets/images/"+signUpImages[index]),
                  ),
                )),)
            ],
          ),
        ),
      ),
    );
  }
}
