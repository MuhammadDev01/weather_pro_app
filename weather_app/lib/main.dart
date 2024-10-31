import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/search_cubit.dart';
import 'package:weather_app/views/weather_home_view.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => AppCubit(),
      child: const WeatherApp(),
    ),
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor;
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: primaryColor =
                getWeatherColorByDay(AppCubit.get(context).model?.state),
            scaffoldBackgroundColor: AppCubit.get(context).model != null
                ? Colors.transparent
                : Colors.white,
          ),
          builder: (context, child) {
            if (AppCubit.get(context).model != null) {
              return Container(
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      primaryColor,
                      Colors.white,
                    ],
                  ),
                ),
                child: child,
              );
            } else {
              return child!;
            }
          },
          debugShowCheckedModeBanner: false,
          home: const HomeView(),
        );
      },
    );
  }
}

MaterialColor getWeatherColorByDay(String? weatherDay) {
  if (weatherDay == null) {
    return Colors.indigo;
  }
  switch (weatherDay) {
    case "Sunny":
      return Colors.orange; // لون عندما يكون الطقس مشمس
    case "Partly cloudy":
    case "Cloudy":
    case "Overcast":
    case "Mist":
    case "Patchy rain possible":
    case "Patchy snow possible":
    case "Patchy sleet possible":
    case "Thundery outbreaks possible":
    case "Fog":
    case "Freezing fog":
      return Colors.grey; // لون عندما يكون الطقس غائم جزئيًا
    case "Patchy freezing drizzle possible":
    case "Blowing snow":
    case "Blizzard":
    case "Patchy light drizzle":
    case "Light drizzle":
    case "Freezing drizzle":
    case "Heavy freezing drizzle":
    case "Patchy light rain":
    case "Light rain":
    case "Moderate rain at times":
    case "Moderate rain":
    case "Heavy rain at times":
    case "Heavy rain":
    case "Light freezing rain":
    case "Moderate or heavy freezing rain":
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Patchy light snow":
    case "Light snow":
    case "Patchy moderate snow":
    case "Moderate snow":
    case "Patchy heavy snow":
    case "Heavy snow":
    case "Ice pellets":
    case "Light rain shower":
    case "Moderate or heavy rain shower":
    case "Torrential rain shower":
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
    case "Light snow showers":
    case "Moderate or heavy snow showers":
    case "Light showers of ice pellets":
    case "Moderate or heavy showers of ice pellets":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
      return Colors.cyan; // لون عندما يكون الطقس عاصف بالثلج

    default:
      return Colors.green; // لون افتراضي للحالات غير المُعرفة
  }
}
