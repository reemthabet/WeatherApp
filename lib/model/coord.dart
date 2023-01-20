import 'package:json_serializable/json_serializable.dart';
class Coord{
  double? lon;
  double? lat;

  Coord({ this.lon,  this.lat});

factory Coord.formJson(Map<String,dynamic>json){
  return Coord(
    lon:double.parse(json["lon"]),
    lat:double.parse(json["lat"]),
  );
}

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(
      lon: double.parse(json["lon"]),
      lat: double.parse(json["lat"]),
    );
  }
//
}