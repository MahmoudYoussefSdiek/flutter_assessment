import 'package:flutter/material.dart';
import 'package:flutter_assessment/business_logic/app_route.dart';
import 'package:flutter_assessment/presentation/components/constants.dart';
import 'package:flutter_assessment/presentation/screens/details_screen.dart';


class DetailsLayout extends StatelessWidget {
  final int index;
  const DetailsLayout({Key? key, required this.index}) : super(key: key);
  static const String route = detailsLayoutRoute;

  @override
  Widget build(BuildContext context) {
    return DetailsScreen(
      article: AppRoute.dataControllerCubit.allArticles[index],
    );
  }
}
