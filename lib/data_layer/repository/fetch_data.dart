import 'package:flutter_assessment/data_layer/model/articles.dart';
import 'package:flutter_assessment/data_layer/web_services/web_services.dart';

class FetchData {
  final WebServices webServices;

  FetchData(this.webServices);

  Future<List<dynamic>> getAllData() async {
    final data = await webServices.getAllData();
    return data.map((article) => ArticleData.fromJson(article)).toList();
  }
}
