import 'package:dio/dio.dart';

class APIService {
  //This function is used to call a url with is not valid then it failed and return 404 error
  Future<Response?> postRequest(Function(int statusCode) onfail) async {
    Dio dio = Dio();
    try {
      final Response response = await dio.post("https://www.123123sad.com");
      return response;
    } catch (e) {
      onfail(404);
    }
    return null;
  }
}
