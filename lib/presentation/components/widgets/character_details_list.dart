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
        detailsItemList(articleTitle, data.title ?? noInfo),
        detailsItemList(articleAbstract, data.abstract ?? noInfo),
        detailsItemList(articleSource, data.source ?? noInfo),
        detailsItemList(articlePublishedDate, data.publishedDate ?? noInfo),
        detailsItemList(articleUpdated, data.updated ?? noInfo),
        detailsItemList(articleSection, data.section ?? noInfo),
        detailsItemList(articleSubsection, data.subsection ?? noInfo),
        detailsItemList(articleNYTDSection, data.nytdsection ?? noInfo),
        detailsItemList(articleKeyWord, ""),
        builder(length: keyWordList.length, data: keyWordList),
        detailsItemList(articleByLine, data.byline ?? noInfo),
        detailsItemList(articleType, data.type ?? noInfo),
        builder(length: data.desFacet?.length ?? noInfoList.length, data: data.desFacet ?? noInfoList),
        builder(length: data.orgFacet?.length ?? noInfoList.length, data: data.orgFacet ?? noInfoList),
        builder(length: data.perFacet?.length ?? noInfoList.length, data: data.perFacet ?? noInfoList),
        builder(length: data.geoFacet?.length ?? noInfoList.length, data: data.geoFacet ?? noInfoList),
      ],
    ),
  );
}

Widget builder({
  //1
  required int length,
  required List<String> data,
}) {
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
        childAspectRatio: 5 / 1,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: length,
      itemBuilder: (context, index) {
        return Text(data[index], style: const TextStyle(color: Colors.white)); //2
      },
    ),
  );
}
