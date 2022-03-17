import 'package:food_app/src/controller/popular_food_controller.dart';
import 'package:food_app/src/data/api/api_client.dart';
import 'package:food_app/src/data/repository/popular_food_repo.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init()async{
  //final sharedPreferences= await SharedPreferences.getInstance();
 // Get.lazyPut(()=>sharedPreferences);
  Get.lazyPut(()=>ApiClient(appBaseUrl: "appBaseUrl"));
  Get.lazyPut(()=>PopularFoodRepo(apiClient: Get.find()));
  Get.lazyPut(()=>PopularFoodController(popularFoodRepo: Get.find()));
}