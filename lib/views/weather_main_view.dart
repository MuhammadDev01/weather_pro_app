import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/cubit/weather_cubit/weather_cubit.dart';
import 'package:weather_app/widgets/weather_custom_darwer.dart';

class WeatherMainView extends StatelessWidget {
  const WeatherMainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cubit = WeatherCubit.get(context);

    return BlocBuilder<WeatherCubit, WeatherStates>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: colorWeatherBackground,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                const WeatherCustomDrawer(),
                Expanded(child: cubit.pages[cubit.currentPage]),
              ],
            ),
          ),
        );
      },
    );
  }
}
