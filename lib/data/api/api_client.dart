import 'package:get/get.dart';
//apiClient is used to talk to the server
class ApiClient extends GetConnect implements GetxService {
  late String token; //talk to server needs a token
  final String appBaseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = "";
    _mainHeaders = {
      'Content-type' : 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
  Future<Response> getData(String uri, ) async {
    try {
      Response response = await get(uri);
      return response;
    }catch(e) {
      return Response(statusCode: 1, statusText: e.toString());//return error message
    }
  }
}