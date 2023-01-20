class Mainweather{
  /*"temp": 287.23,
  "feels_like": 286.05,
  "temp_min": 287.23,
  "temp_max": 287.23,
  "pressure": 1021,
  "humidity": 52,
  "sea_level": 1021,
  "grnd_level": 950*/

    double? temp,feels_like,temp_min,temp_max,pressure,humidity,sea_level,grnd_level;

    Mainweather({this.temp, this.feels_like, this.temp_min, this.temp_max,
      this.pressure, this.humidity, this.sea_level, this.grnd_level});

    Map<String, dynamic> toJson() {
    return {
      "temp": this.temp,
      "feels_like": this.feels_like,
      "temp_min": this.temp_min,
      "temp_max": this.temp_max,
      "pressure": this.pressure,
      "humidity": this.humidity,
      "sea_level": this.sea_level,
      "grnd_level": this.grnd_level,
    };
  }

    factory Mainweather.fromJson(Map<String, dynamic> json) {
    return Mainweather(
      temp: double.parse(json["temp"]),
      feels_like: json["feels_like"],
      temp_min: json["temp_min"],
      temp_max: json["temp_max"],
      pressure: json["pressure"],
      humidity: json["humidity"],
      sea_level: json["sea_level"],
      grnd_level: json["grnd_level"],
    );
  }
//
}