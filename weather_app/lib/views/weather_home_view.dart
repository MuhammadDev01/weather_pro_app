import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/views/my_city_weather_condition_view.dart';
import 'package:weather_app/widgets/search_bar.dart';

class WeatherHomeView extends StatefulWidget {
  const WeatherHomeView({super.key});

  @override
  State<WeatherHomeView> createState() => _WeatherHomeViewState();
}

class _WeatherHomeViewState extends State<WeatherHomeView> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: colorWeatherBackground,
      child: Form(
        key: formKey,
        child: Column(
          children: [
            searchBar(formkey: formKey),
            Expanded(child: MyCityWeatherConditionView()),
          ],
        ),
      ),
    );
  }
}
