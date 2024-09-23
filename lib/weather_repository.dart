import 'package:weather_app_prosheet/weather_data.dart';

class WeatherRepository {
  final WeatherData _cityData = WeatherData(
      city: "Bochum", temperature: 25.5, weatherCondition: "Sonnig");

  WeatherData getWeather() => _cityData;
}
