import 'package:flutter/material.dart';
import 'package:flutter_assessment/data_layer/model/articles.dart';
import 'package:flutter_assessment/presentation/components/widgets/list_widget.dart';
import 'package:flutter_assessment/presentation/components/widgets/widget_builder.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.data}) : super(key: key);
  final List<ArticleData> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NY Times Most Popular Articles'),
      ),
      body: listWidget(
        widget: widgetBuilder(
          length: data.length,
          data: data,
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
