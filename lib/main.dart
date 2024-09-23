import 'package:flutter/material.dart';

void main() {
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
        title: const Text("Weather App"),
      ),
      body: Center(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Wilkommen zur Weather App!',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
            ),
            Text('Bochum 23 Grad°, Sonnig'),
            Text('Dortmund 22 Grad°, Sonnig'),
          ],
        ),
      ),
    );
  }
}
