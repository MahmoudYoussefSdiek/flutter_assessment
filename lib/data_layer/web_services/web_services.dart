import 'package:dio/dio.dart';
import 'package:flutter_assessment/presentation/components/constants.dart';

//http://api.nytimes.com/svc/mostpopular/v2/viewed/7.json?api-key=6WEuyAvGezOKeui9rgTLEYQJ2DWmGBnI
class WebServices {
  late Dio dio;
  final category = 'mostpopular';
  final period = '7';
  late String url;
  WebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllData() async {
    url = '$baseUrl$category/v2/viewed/$period.json?api-key=$apiKey';
    try {
      Response response = await dio.get(url);
      return response.data[dataResults];
    } catch (e) {
      return [];
    }
  }
}
