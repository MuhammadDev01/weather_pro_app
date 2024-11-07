import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/views/my_city_weather_condition_view.dart';

class WeatherHomeView extends StatelessWidget {
  const WeatherHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      color: colorWeatherBackground,
      child: const MyCityWeatherConditionView(),
    );
  }
}
