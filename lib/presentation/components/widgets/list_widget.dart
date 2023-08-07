import 'package:flutter/material.dart';

Widget listWidget({
  required Widget widget,
}) {
  return SingleChildScrollView(
    child: Container(
      // height: double.infinity,
      color: Colors.white54,
      child: widget,
    ),
  );
}
