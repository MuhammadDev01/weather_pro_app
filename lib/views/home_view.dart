import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/search_cubit.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Weather App'),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchView(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
            ],
          ),
          body: ConditionalBuilder(
            condition: AppCubit.get(context).model != null,
            builder: (context) => WeatherInfoBody(
              weatherModel: AppCubit.get(context).model!,
            ),
            fallback: (context) => const NoWeatherBody(),
          ),
        );
      },
    );
  }
}
