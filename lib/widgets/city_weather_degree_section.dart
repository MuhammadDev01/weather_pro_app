import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_style.dart';

Widget CityWeatherDegreeSection() {
  return SizedBox(
    height: 200,
    child: ListTile(
      
      contentPadding: EdgeInsets.symmetric(horizontal: 30),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Madrid',
            style: AppStyle.styleBold20.copyWith(
              fontSize: 30,
            ),
          ),
          Text(
            'chance of rain: 0%',
            style: AppStyle.styleRegular14,
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
      subtitle: Text(
        '31%',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w900,
          color: Colors.white.withOpacity(0.7),
        ),
      ),
      trailing: Icon(
        Icons.sunny,
        size: 60,
        color: Colors.amber,
      ),
    ),
  );
}
