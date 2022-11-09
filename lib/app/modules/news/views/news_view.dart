import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:step_01/app/theme/app_colors.dart';
import 'package:step_01/app/utils/news_card.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ctl = controller;
    print(ctl.news.value.isBlank);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text('NewsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() {
          if (ctl.news.value != null) {
            final news = ctl.news.value;
            return ListView.builder(
              itemCount: news.articles.length,
              itemBuilder: (BuildContext context, int index) {
                return NewsCard(news: news.articles[index]);
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        }),
      ),
    );
  }
}
