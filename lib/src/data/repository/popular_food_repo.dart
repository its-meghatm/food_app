import 'package:food_app/src/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularFoodRepo extends GetxService{
  final ApiClient apiClient;
  PopularFoodRepo({
    required this.apiClient
});
  Future<Response> getPopularFood()async{
    return await apiClient.getData("end url");
  }
}