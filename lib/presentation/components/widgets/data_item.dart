import 'package:flutter/material.dart';
import 'package:flutter_assessment/data_layer/model/articles.dart';
import 'package:flutter_assessment/presentation/components/widgets/show_loading_indicator.dart';
import 'package:flutter_assessment/presentation/layout/details_layout.dart';


class DataItem extends StatelessWidget {
  final ArticleData data;
  final int index;

  const DataItem({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.pushNamed(context, DetailsLayout.route, arguments: index),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  width: double.infinity,
                  margin: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Image.network(
                    data.media?[0].mediaMetadata?[2].url ?? '',
                    loadingBuilder: (context, child, loadingProgress) =>
                        loadingProgress == null
                            ? child
                            : showLoadingIndicator(),
                    // fit: BoxFit.cover,
                  ),
              ),
            ),
            Text(
              ' Title : ${data.title}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' Published Date : ${data.publishedDate}',
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
