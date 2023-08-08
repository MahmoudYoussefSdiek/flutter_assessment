import 'package:flutter/material.dart';
import 'package:flutter_assessment/data_layer/model/articles.dart';
import 'package:flutter_assessment/presentation/components/widgets/data_item.dart';


Widget widgetBuilder({
  //1
  required int length,
  required List<ArticleData> data,
}) {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
      childAspectRatio: 3 / 3,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
    ),
    shrinkWrap: true,
    physics: const ClampingScrollPhysics(),
    padding: EdgeInsets.zero,
    itemCount: length,
    itemBuilder: (context, index) {
      return DataItem(
        data: data[index],
        index: index,
      ); //2
    },
  );
}
