import 'package:get/get.dart';
import '../modules/bmi/bindings/bmi_binding.dart';
import '../modules/bmi/views/bmi_view.dart';
import '../modules/news/bindings/news_binding.dart';
import '../modules/news/views/news_view.dart';
import '../modules/weather/bindings/weather_binding.dart';
import '../modules/weather/views/weather_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.NEWS;

  static final routes = [
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.WEATHER,
      page: () => const WeatherView(),
      binding: WeatherBinding(),
    ),
    GetPage(
      name: _Paths.BMI,
      page: () => const BmiView(),
      binding: BmiBinding(),
    ),
  ];
}
