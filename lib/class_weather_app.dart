// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:weather_app_prosheet/weather_data.dart';
import 'package:weather_app_prosheet/weather_repository.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({
    super.key,
    required this.repository,
  });

  final WeatherRepository repository;

  @override
  Widget build(BuildContext context) {
    final WeatherData city = repository.getWeather();
    final double temperature = city.temperature;
    final String weatherCondition = city.weatherCondition;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(
              color: Colors.green, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Wilkommen zur Weather App!',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              city.city,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Die Temparatur beträgt: ${city.temperature}°C"),
            Text("Wetter: ${city.weatherCondition}"),
          ],
        ),
      ),
    );
  }
}
