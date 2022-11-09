// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:step_01/app/data/repositories/news_repo.dart';

import '../../../data/models/news_model.dart';

class NewsController extends GetxController {
  final newsRepo = NewsRepo();
  Rx<News?> news = Rxn();

  final count = 0.obs;

  Future<void> getNews() async {
    news.value = await newsRepo.getNews();
  }

  @override
  void onInit() {
    super.onInit();
    getNews();
  }

  void increment() => count.value++;
}
