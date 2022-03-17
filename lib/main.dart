import 'package:flutter/material.dart';
import 'package:food_app/src/controller/popular_food_controller.dart';
import 'package:food_app/src/helper/dependency.dart' as dep;
import 'package:food_app/src/routes/routes_helper.dart';
import 'package:food_app/src/screens/cart_page.dart';
import 'package:food_app/src/screens/food_details.dart';
import 'package:food_app/src/screens/home_page.dart';
import 'package:food_app/src/screens/login_page.dart';
import 'package:food_app/src/screens/main_food_page.dart';
import 'package:food_app/src/screens/signup_page.dart';
import 'package:food_app/src/screens/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
Future<void> main() async {
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Get.find<PopularFoodController>().getPopularFood();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  SplashScreen(),
     // initialRoute: RoutesHelper.initial,
     // getPages: RoutesHelper.routes,
    );
  }
}
