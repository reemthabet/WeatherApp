import 'package:weather_app/model/clouds.dart';
import 'package:weather_app/model/coord.dart';
import 'package:weather_app/model/main_weather.dart';
import 'package:weather_app/model/sys.dart';
import 'package:weather_app/model/weather_model.dart';

class CurrentWeatherData{
  Coord? coord;
  List<WeatherModel?>? weather ;
  String? base;
  Mainweather? mainweather;
  int? visibility ;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  CurrentWeatherData(
  {this.coord,
    this.weather,
    this.base,
    this.mainweather,
    this.visibility,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod});

  factory CurrentWeatherData.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherData(
      coord: Coord.fromJson(json["coord"]),
      // weather: List.of(json["weather"])
      //     .map((i) => i /* can't generate it properly yet */)
      //     .toList(),
      base: json["base"],
      mainweather: Mainweather.fromJson(json["mainweather"]),
      visibility: int.parse(json["visibility"]),
      clouds: Clouds.fromJson(json["clouds"]),
      dt: int.parse(json["dt"]),
      sys: Sys.fromJson(json["sys"]),
      timezone: int.parse(json["timezone"]),
      id: int.parse(json["id"]),
      name: json["name"],
      cod: int.parse(json["cod"]),
    );
  }
//
}