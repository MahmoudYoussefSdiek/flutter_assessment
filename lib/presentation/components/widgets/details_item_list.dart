import 'package:flutter/material.dart';
import 'package:flutter_assessment/presentation/components/constants.dart';


Widget detailsItemList(String title, String? value) {
  if(value!.isEmpty) {
    value = noInfo;
  }
  return Container(
    width: double.infinity,
    margin: const EdgeInsetsDirectional.fromSTEB(8, 4, 4, 8),
    padding: const EdgeInsetsDirectional.fromSTEB(10, 7, 7, 8),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(
      '$title : $value',
      style: const TextStyle(color: Colors.white),
    ),
  );
}
