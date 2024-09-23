import 'package:flutter/material.dart';
import 'package:weather_app_prosheet/class_weather_app.dart';
import 'package:weather_app_prosheet/weather_data.dart';

void main() {
  final WeatherData city = WeatherData(
      city: "Bochum", temperature: 23.5, weatherCondition: "Sonnig");
  runApp(MainApp(city: city));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.city});

  final WeatherData city;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(city: city),
    );
  }
}
