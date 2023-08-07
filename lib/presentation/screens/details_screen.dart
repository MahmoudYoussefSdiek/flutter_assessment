import 'package:flutter/material.dart';
import 'package:flutter_assessment/data_layer/model/articles.dart';
import 'package:flutter_assessment/presentation/components/widgets/character_details_list.dart';
import 'package:flutter_assessment/presentation/components/widgets/list_widget.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.article}) : super(key: key);
  final ArticleData article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title!),
      ),
      body: listWidget(
          widget:
              articleDetailsList(data: article),
    )
    );
  }
}
