import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_style.dart';
import 'package:weather_app/constants/constants.dart';

Widget airConditionsSection() => Expanded(
  child: Container(
        margin: EdgeInsets.only(top: 20, right: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: colorForecastBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _airconditionsTitleAndButton(),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  // childAspectRatio: 1,
                ),
                itemCount: 4,
                itemBuilder: (context, index) => SizedBox(
                  height: 50,
                  child: ListTile(
                    leading: Icon(Icons.airline_seat_flat_angled),
                    title: Text(
                      'Air Condition',
                      style: AppStyle.styleRegular14,
                    ),
                    subtitle: Text(
                      '18°C',
                      style: AppStyle.styleBold20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
);

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
      Spacer(),
      ElevatedButton(
        onPressed: () {},
        child: Text(
          'see more',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
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
