import 'package:flutter_assessment/data_layer/model/articles.dart';
import 'package:flutter_assessment/data_layer/repository/fetch_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'data_controller_state.dart';

class DataControllerCubit extends Cubit<DataControllerState> {
  final FetchData data;
  List<ArticleData> allArticles = [];
  DataControllerCubit(this.data) : super(DataControllerInitial());

  List<dynamic> getAllData() {
    if (allArticles.isNotEmpty) {
      emit(ArticlesLoaded());
      return allArticles;
    } else {
      data.getAllData().then((allData) {
        for (int i = 0; i < allData.length; i++) {
          allArticles.add(allData[i]);
        }
        emit(ArticlesLoaded());
      });
      return allArticles;
    }
  }
}
