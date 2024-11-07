import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_style.dart';
import 'package:weather_app/constants/constants.dart';

Widget searchBar({
  required GlobalKey<FormState> formkey,
}) {
  return TextFormField(
    style: const TextStyle(color: Colors.white),
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
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
