import 'package:flutter/material.dart';
import 'package:weather_app/widgets/city_weather_forcast_today_section.dart';
import 'package:weather_app/widgets/city_weather_degree_section.dart';

class MyCityWeatherConditionView extends StatelessWidget {
  const MyCityWeatherConditionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CityWeatherDegreeSection(),
        CityTodayForecastSection(),
      ],
    );
  }
}
