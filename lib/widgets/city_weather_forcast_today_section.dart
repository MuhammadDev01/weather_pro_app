import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_style.dart';
import 'package:weather_app/constants/constants.dart';

Widget todayForecastCitySection() {
  return Container(
    margin: const EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
      color: colorForecastBackground,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "TODAY'S FORCAST",
            style: TextStyle(
              fontSize: 12,
              fontFamily: fontItim,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
              children: List.generate(
            7,
            (index) => Expanded(child: _todayForcastItemBuilder(index)),
          ))
        ],
      ),
    ),
  );
}

Widget _todayForcastItemBuilder(int index) {
  return Container(
    decoration: BoxDecoration(
      border: index != 6
          ? const Border(
              right: BorderSide(
                color: Colors.white10,
              ),
            )
          : null,
    ),
    child: const Column(
      children: [
        Text(
          "6:00 pm",
          style: AppStyle.styleRegular14,
        ),
        SizedBox(
          height: 8,
        ),
        Icon(
          Icons.sunny,
          color: Colors.amber,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "25 C",
          style: AppStyle.styleRegular14,
        ),
      ],
    ),
  );
}
