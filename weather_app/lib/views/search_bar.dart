import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_style.dart';
import 'package:weather_app/constants/constants.dart';

Widget searchBar({
  required GlobalKey<FormState> formkey,
}) {
  return TextFormField(
    onFieldSubmitted: (value) {
      if (formkey.currentState!.validate()) {
        print('object');
      }
    },
    style: TextStyle(color: Colors.white),
    cursorColor: Colors.white,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter a city name';
      }
      return null;
    },
    decoration: InputDecoration(
      hintText: 'Search for cities',
      hintStyle: AppStyle.styleRegular14
          .copyWith(fontWeight: FontWeight.bold, color: Colors.grey.shade700),
      filled: true,
      fillColor: colorForecastBackground,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
