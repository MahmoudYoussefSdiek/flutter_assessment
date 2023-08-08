import 'package:flutter/material.dart';
import 'package:flutter_assessment/data_layer/model/articles.dart';
import 'package:flutter_assessment/presentation/components/constants.dart';
import 'package:flutter_assessment/presentation/components/widgets/details_item_list.dart';


Widget articleDetailsList(
    {required ArticleData data}) {

  String? keyWord = data.adxKeywords ;
  List<String> keyWordList = keyWord!.split(';');

  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
    child: Column(
      children: [
        detailsItemList(articleTitle, data.title),
        detailsItemList(articleAbstract, data.abstract),
        detailsItemList(articleSource, data.source),
        detailsItemList(articlePublishedDate, data.publishedDate),
        detailsItemList(articleUpdated, data.updated),
        detailsItemList(articleSection, data.section),
        detailsItemList(articleSubsection, data.subsection),
        detailsItemList(articleNYTDSection, data.nytdsection),
        detailsItemList(articleKeyWord, " "),
        builder(data: keyWordList),
        detailsItemList(articleByLine, data.byline),
        detailsItemList(articleType, data.type),
        detailsItemList(articleDesFacet, " "),
        builder(data: data.desFacet),
        detailsItemList(articleOrgFacet, " "),
        builder(data: data.orgFacet),
        detailsItemList(articlePerFacet, " "),
        builder(data: data.perFacet),
        detailsItemList(articleGeoFacet, " "),
        builder(data: data.geoFacet),
      ],
    ),
  );
}

Widget builder({
  required List<String>? data,
}) {
  if(data!.isEmpty) {
    data = noInfoList;
  }
  return Container(
    width: double.infinity,
    margin: const EdgeInsetsDirectional.fromSTEB(8, 4, 4, 8),
    padding: const EdgeInsetsDirectional.fromSTEB(10, 7, 7, 8),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
    ),
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 10 / 1,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Text(data![index], style: const TextStyle(color: Colors.white));
      },
    ),
  );
}
