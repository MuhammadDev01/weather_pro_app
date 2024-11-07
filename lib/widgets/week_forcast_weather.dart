import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';

Container weekForcastWeather() {
  return Container(
    margin: const EdgeInsets.only(top: 60),
    decoration: const BoxDecoration(
      color: colorForecastBackground,
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
    ),
  );
}
