import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weathter_info_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({Key? key, required this.weatherModel}) : super(key: key);
final WeatherInfoModel? weatherModel;
  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      fallback: (context) => const Center(child: CircularProgressIndicator(),),
      condition: weatherModel!=null,
      builder:(context) =>  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              weatherModel!.cityName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
             Text(
              'updated at ${weatherModel!.date.hour}:${weatherModel!.date.minute}',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https:${weatherModel!.image}',
                  scale: 0.7,
                ),
                 Text(
                  weatherModel!.currentTemp.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                 Column(
                  children: [
                    Text(
                      'Maxtemp: ${weatherModel!.maxTemp.round()}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Mintemp: ${weatherModel!.minTemp.round()}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
             Text(
              weatherModel!.state,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
