import 'package:get/get.dart';
import 'package:nyu_advanced_project_1/controllers/popular_product_controller.dart';
import 'package:nyu_advanced_project_1/data/api/api_client.dart';
import 'package:nyu_advanced_project_1/data/repository/popular_product_repo.dart';
Future<void> init()async {
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: "https://mvs.bslmeiyu.com"));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}