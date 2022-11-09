import 'package:dio/dio.dart';

import '../../constants/api_const.dart';
import '../models/news_model.dart';

class NewsRepo {
  //dio je http menen AppConst.newsApi ge baryp, datany alyp keluu
  //kelgen datany News model dep beruu

  final dio = Dio();

  Future<News?> getNews() async {
    final response = await dio.get(ApiConst.newsApi);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final news = News.fromJson(response.data);
      return news;
    } else {
      return null;
    }
  }
}
