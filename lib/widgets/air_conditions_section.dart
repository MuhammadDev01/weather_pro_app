import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_style.dart';
import 'package:weather_app/constants/constants.dart';

Widget airConditionsSection() => Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 20, right: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: colorForecastBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _airconditionsTitleAndButton(),
              _airConditionRowItems(
                icon1: Icons.thermostat,
                icon2: Icons.air,
                title1: 'Real Feel',
                title2: 'Wind',
                subtitle1: '30',
                subtitle2: '0.2 km/h',
              ),
              _airConditionRowItems(
                icon1: Icons.water_drop,
                icon2: Icons.wb_sunny,
                title1: 'Chance of rain',
                title2: 'UV Index',
                subtitle1: '0%',
                subtitle2: '3',
              ),
            ],
          ),
        ),
      ),
    );

Row _airConditionRowItems({
  required IconData icon1,
  required IconData icon2,
  required String title1,
  required String subtitle1,
  required String title2,
  required String subtitle2,
}) {
  return Row(
    children: [
      Expanded(
        child: ListTile(
          leading: Icon(
            icon1,
            color: Colors.white.withOpacity(0.7),
          ),
          title: Text(
            title1,
            style: AppStyle.styleRegular14,
          ),
          subtitle: Text(
            subtitle1,
            style: AppStyle.styleBold20.copyWith(
              fontSize: 28,
              fontFamily: fontItim,
            ),
          ),
        ),
      ),
      Expanded(
        child: ListTile(
          leading: Icon(
            icon2,
            color: Colors.white.withOpacity(0.7),
          ),
          title: Text(
            title2,
            style: AppStyle.styleRegular14,
          ),
          subtitle: Text(
            subtitle2,
            style: AppStyle.styleBold20.copyWith(
              fontSize: 24,
            ),
          ),
        ),
      ),
    ],
  );
}

Row _airconditionsTitleAndButton() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'AIR CONDITIONS',
        style: AppStyle.styleRegular14.copyWith(
          fontWeight: FontWeight.bold,
          fontFamily: fontItim,
        ),
      ),
      const Spacer(),
      ElevatedButton(
        onPressed: () {},
        child: const Text(
          'see more',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    ],
  );
}
