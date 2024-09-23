import 'package:flutter/material.dart';
import 'package:weather_app_prosheet/weather_data.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key, required this.city});

  final WeatherData city;

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

            // style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //),
            Text(city.city),
            Text("Die Temperatur beträgt, ${city.temperature} Grad°"),
            Text("Das Wetter wird, ${city.weatherCondition}"),
            // Text(
            //   '23,5 Grad°, Sonnig',
            //),
            //Text('Dortmund',
            //  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            // Text('22,2 Grad°, Sonnig'),
          ],
        ),
      ),
    );
  }
}
