import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/views/weather_cities_view.dart';
import 'package:weather_app/views/weather_home_view.dart';
import 'package:weather_app/views/weather_settings_view.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(WeatherInitialState());
  static WeatherCubit get(context) => BlocProvider.of(context);

  List<Widget> pages = const [
    WeatherHomeView(),
    WeatherCitiesView(),
    WeatherSettingsView(),
  ];
  int currentPage = 0;
  void changePage(int index) {
    currentPage = index;
    emit(WeatherChangePage());
  }
}
