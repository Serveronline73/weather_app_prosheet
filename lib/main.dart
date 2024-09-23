import 'package:flutter/material.dart';

void main() {
  final WeatherData city = WeatherData(
      city: "Bochum", temperature: 23.5, weatherCondition: "Sonnig");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WeatherApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(
              color: Colors.green, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Wilkommen zur Weather App!',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Bochum',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '23,5 Grad°, Sonnig',
            ),
            Text('Dortmund',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('22,2 Grad°, Sonnig'),
          ],
        ),
      ),
    );
  }
}

class WeatherData {
  final String city;
  final double temperature;
  final String weatherCondition;

  WeatherData(
      {required this.city,
      required this.temperature,
      required this.weatherCondition});
}
