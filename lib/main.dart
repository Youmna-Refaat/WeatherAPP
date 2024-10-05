import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }

  switch (condition) {
    case 'Sunny':
      return Colors.orange;
    case 'Partly Cloudy':
      return Colors.lightBlue;
    case 'Cloudy':
      return Colors.blueGrey;
    case 'Overcast':
      return Colors.grey;
    case 'Mist':
      return Colors.cyan;
    case 'Patchy rain possible':
    case 'Light rain':
    case 'Patchy light rain':
      return Colors.blue;
    case 'Moderate rain':
    case 'Moderate rain at times':
      return Colors.blue;
    case 'Heavy rain':
    case 'Heavy rain at times':
      return Colors.indigo;
    case 'Patchy snow possible':
    case 'Light snow':
    case 'Patchy light snow':
      return Colors.blueGrey;
    case 'Moderate snow':
      return Colors.blueGrey;
    case 'Heavy snow':
      return Colors.teal;
    case 'Blizzard':
    case 'Thundery outbreaks possible':
      return Colors.purple;
    case 'Fog':
      return Colors.blueGrey;
    case 'Freezing fog':
    case 'Freezing drizzle':
      return Colors.blue;
    case 'Ice pellets':
      return Colors.green;
    case 'Light sleet':
    case 'Moderate or heavy sleet':
      return Colors.cyan;
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
      return Colors.deepPurple;
    default:
      return Colors.blueGrey;
  }
}