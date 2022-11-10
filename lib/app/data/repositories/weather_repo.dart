import 'package:dio/dio.dart';
import 'package:step_01/app/constants/api_const.dart';

import '../models/weather_model.dart';

class WeatherRepo {
  // 1: serverdin linki boluu kerek => ApiConst.weatherApi
  // 2: linkke request kibere turgan kitepkana kerek => (Dio, http) => Dio()
  // 3: kelgen jooptun status codun teksherebiz
  // 4: Status cod 200 go barabar bolso, datasyn weather model tuzobuz
  // 5: modeldi return kylabyz
  // 6: Egerde status cod 200 barabar emes bolso null return kylabyz

  final dio = Dio();

  Future<Weather?> getWeather() async {
    final response = await dio.get(ApiConst.weatherApi);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final weather = Weather.fromJson(response.data);
      return weather;
    } else {
      return null;
    }
  }
}
