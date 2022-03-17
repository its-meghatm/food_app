import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/screens/home_page.dart';
import 'package:food_app/src/screens/signup_page.dart';
import 'package:food_app/src/widgets/small_text_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/constant.dart';
import '../utils/utils.dart';
import '../widgets/app_textfield.dart';
import '../widgets/large_text_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight(context,dividedBy: 20),),
              Center(
                child: Container(
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/spl.png"),
                  ),
                ),
              ),
              SizedBox(height: screenHeight(context,dividedBy: 20),),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LargeText(text: "Hey Welcome Back",size: 30,),
                    SizedBox(height: screenHeight(context,dividedBy: 70),),
                    SmallText(text: "Login Now !",size: 20,)
                  ],
                ),
              ),
              SizedBox(height: screenHeight(context,dividedBy: 30),),

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
              GestureDetector(
                onTap: (){
                  Get.to(()=>HomePage(),);
                },
                child: Container(
                  width: screenWidth(context,dividedBy: 2.6),
                  height: screenHeight(context,dividedBy: 15),
                  //color: Colors.red,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.iconColor1
                  ),
                  child: Center(child: LargeText(text: "Sign In",color: Colors.white,)),
                ),
              ),
              SizedBox(height: screenHeight(context,dividedBy: 40),),
              Row(
                children:   [
                  Expanded(
                      child: Divider(color: AppColors.iconColor1,)
                  ),
                  SmallText( text: 'OR',),
                  Expanded(
                      child: Divider(color: AppColors.iconColor1)
                  ),
                ],
              ),
              SizedBox(height: screenHeight(context,dividedBy: 40),),
              Wrap(
                children: List.generate(3, (index) => Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CircleAvatar(
                    radius: screenHeight(context,dividedBy: 40),
                    backgroundImage: AssetImage("assets/images/"+signUpImages[index]),
                  ),
                )),),
              SizedBox(height: screenHeight(context,dividedBy: 15),),
              RichText(
                  text: TextSpan(
                      text: "Don't have an Account? ",
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: screenHeight(context,dividedBy: 50)
                      ),
                  children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=(){
                          Get.to(()=>SignUpPage(),
                          transition: Transition.fade);
                        },
                      text: "Create",
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: screenHeight(context,dividedBy: 50),
                        fontWeight: FontWeight.bold
                      ),)
                  ])
              ),
            ],
          ),
        ),
      ),
    );
  }
}
