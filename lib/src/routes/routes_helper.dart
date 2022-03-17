import 'package:food_app/src/screens/main_food_page.dart';
import 'package:get/get.dart';

class RoutesHelper{
  static const String initial="/";

  static List<GetPage> routes=[
    GetPage(name: "/", page: ()=>MainFoodPage())
  ];
}