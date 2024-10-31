import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/cubit/search_cubit.dart';
import 'package:weather_app/widgets/weather_custom_darwer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
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
      },
    );
  }
}
