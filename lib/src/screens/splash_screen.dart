import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/routes/routes_helper.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/large_text_widget.dart';
import 'home_page.dart';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  late Animation<double>animation;
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller= new AnimationController(vsync: this,duration: Duration(seconds: 2))..forward();
    animation=new CurvedAnimation(parent: controller, curve: Curves.linear);

    Timer(
        const Duration(seconds: 3),
        ()=>Get.to(()=>LoginPage())
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[700],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(scale: controller,
          child: Center(child: Image.asset("assets/images/spl.png",))),
          //Center(child: LargeText( text: 'The best food',size: 30,)),

        ],
      ),
    );
  }
}
