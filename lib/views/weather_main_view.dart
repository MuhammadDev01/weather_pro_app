import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/views/weather_home_view.dart';
import 'package:weather_app/widgets/weather_custom_darwer.dart';

class WeatherMainView extends StatelessWidget {
  const WeatherMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: colorWeatherBackground,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            WeatherCustomDrawer(),
            Expanded(child: WeatherHomeView()),
          ],
        ),
      ),
    );
  }
}
