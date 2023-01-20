import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

class WeatherService {
//       WeatherService({this.city});

  String? apiKey = "dd020e7cabcb482288c85227231101";
  String? baseUrl = "http://api.weatherapi.com/v1";


  Future<WeatherModel> getWeather({required String cityName}) async {
    Uri url = Uri.parse(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
    http.Response response = await http.get(url);
    Map<String, dynamic>? data = jsonDecode(response.body);

    WeatherModel weather=WeatherModel.fromJson(data);

    return weather;
  }
}
