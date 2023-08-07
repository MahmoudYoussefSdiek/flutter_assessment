import 'package:flutter/material.dart';
import 'package:flutter_assessment/business_logic/app_route.dart';
import 'package:flutter_assessment/business_logic/cubit/check_connection/internet_cubit.dart';
import 'package:flutter_assessment/business_logic/cubit/data_controller/data_controller_cubit.dart';
import 'package:flutter_assessment/presentation/components/constants.dart';
import 'package:flutter_assessment/presentation/components/widgets/show_loading_indicator.dart';
import 'package:flutter_assessment/presentation/screens/home_screen.dart';
import 'package:flutter_assessment/presentation/screens/no_internet_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);
  static const String route = homeLayoutRoute;

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  void initState() {
    super.initState();
    AppRoute.internetCubit.checkConnection();
    AppRoute.dataControllerCubit.getAllData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCubit, InternetState>(builder: (context, state) {
      if (state is ConnectedState) {
        return BlocBuilder<DataControllerCubit, DataControllerState>(
          builder: (context, state) {
            if (state is ArticlesLoaded) {
              return HomeScreen(
                data: AppRoute.dataControllerCubit.allArticles,
              );
            } else {
              return showLoadingIndicator();
            }
          },
        );
      } else {
        return const NoInternetScreen();
      }
    });
  }
}
