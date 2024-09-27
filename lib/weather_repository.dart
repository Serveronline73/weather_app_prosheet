import 'dart:math';

import 'package:weather_app_prosheet/weather_data.dart';

class WeatherRepository {
  final List<WeatherData> _weatherData = [
    WeatherData(city: "Dormund", temperature: 22, weatherCondition: "Bewölkt"),
    WeatherData(city: "Essen", temperature: 19, weatherCondition: "Bewölkt"),
    WeatherData(city: "Köln", temperature: 23, weatherCondition: "Sonnig"),
    WeatherData(city: "Hannover", temperature: 22, weatherCondition: "Bewölkt"),
    WeatherData(
        city: "Düsseldorf", temperature: 25, weatherCondition: "Sonnig"),
    WeatherData(city: "Bochum", temperature: 25.5, weatherCondition: "Sonnig"),
  ];
  WeatherData getWeather() {
    final random = Random();
    return _weatherData[random.nextInt(_weatherData.length)];
  }
}












//class WeatherRepository {
  //final WeatherData _cityData = WeatherData(
    //  city: "Bochum", temperature: 25.5, weatherCondition: "Sonnig");

  //WeatherData getWeather() => _cityData;
//}
