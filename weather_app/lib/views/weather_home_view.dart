import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/widgets/weather_custom_darwer.dart';

class WeatherHomeView extends StatelessWidget {
  const WeatherHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWeatherBackground,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            const WeatherCustomDrawer(),
            Expanded(
              child: Container(
                color: colorWeatherBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
