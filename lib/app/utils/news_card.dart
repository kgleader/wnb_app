import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants/api_const.dart';
import '../data/models/news_model.dart';
import '../theme/app_text_styles.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.news});

  final Article news;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => NewsDetailView(article: news),
          //   ),
          // );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: CachedNetworkImage(
                  imageUrl: news.urlToImage ?? ApiConst.defaultImage,
                  placeholder: (context, url) =>
                      Image.asset('assets/news_loading.webp'),
                  errorWidget: (context, url, e) =>
                      Image.asset('assets/news_error.jpeg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                flex: 5,
                child: Text(
                  news.title,
                  style: AppTextStyle.newsTitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
