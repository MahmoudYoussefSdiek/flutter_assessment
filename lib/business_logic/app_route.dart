import 'package:flutter/material.dart';
import 'package:flutter_assessment/business_logic/cubit/check_connection/internet_cubit.dart';
import 'package:flutter_assessment/business_logic/cubit/data_controller/data_controller_cubit.dart';
import 'package:flutter_assessment/data_layer/repository/fetch_data.dart';
import 'package:flutter_assessment/data_layer/web_services/web_services.dart';
import 'package:flutter_assessment/presentation/layout/details_layout.dart';
import 'package:flutter_assessment/presentation/layout/home_layout.dart';


class AppRoute {
  late FetchData fetchData;
  static late DataControllerCubit dataControllerCubit;
  static late InternetCubit internetCubit;

  AppRoute() {
    fetchData = FetchData(WebServices());
    dataControllerCubit = DataControllerCubit(fetchData);
    internetCubit = InternetCubit();
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeLayout.route:
        return MaterialPageRoute(
          builder: (_) => const HomeLayout(),
        );

      case DetailsLayout.route:
        return MaterialPageRoute(
          builder: (_) => DetailsLayout(index: settings.arguments as int),
        );

      default:
        return null;
    }
  }
}
