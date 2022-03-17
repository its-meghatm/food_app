import 'package:food_app/src/data/repository/popular_food_repo.dart';
import 'package:get/get.dart';

class PopularFoodController extends GetxController{
  final PopularFoodRepo popularFoodRepo;

  PopularFoodController({required this.popularFoodRepo});
  List<dynamic> _popularProductList=[];
  List<dynamic> get popularProductList =>_popularProductList;

  Future<void> getPopularFood()async {
  Response response= await popularFoodRepo.getPopularFood();
   if(response.statusCode==200) {
     _popularProductList = [];
     //_popularProductList.addAll();
     update();
   }
     else{

     }
  }
}