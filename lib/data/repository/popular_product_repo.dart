import 'package:get/get.dart';
import 'package:nyu_advanced_project_1/data/api/api_client.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient; //repo needs to talk to API client
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{
    return await apiClient.getData("/api/v1/products/popular");
  }

}