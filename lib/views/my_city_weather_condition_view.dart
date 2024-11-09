import 'package:flutter/material.dart';
import 'package:weather_app/widgets/air_conditions_section.dart';
import 'package:weather_app/widgets/city_weather_forcast_today_section.dart';
import 'package:weather_app/widgets/city_weather_degree_section.dart';
import 'package:weather_app/widgets/search_bar.dart';
import 'package:weather_app/widgets/week_forcast_weather.dart';

class MyCityWeatherConditionView extends StatefulWidget {
  const MyCityWeatherConditionView({super.key});

  @override
  State<MyCityWeatherConditionView> createState() =>
      _MyCityWeatherConditionViewState();
}

class _MyCityWeatherConditionViewState
    extends State<MyCityWeatherConditionView> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Form(
            key: formKey,
            child: Column(
              children: [
                searchBar(formkey: formKey),
                cityWeatherDegreeSection(),
                todayForecastCitySection(),
                airConditionsSection(),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: weekForcastWeather(),
        ),
      ],
    );
  }
}

