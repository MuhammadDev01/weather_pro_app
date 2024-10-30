import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static Dio dio = Dio();
  static String baseUrl = 'https://api.weatherapi.com/v1';

  static String apiKey = '871ad3e3096a4a3c85501214230803';

  static Future<Response<dynamic>?> getWeather(String cityName, context) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');

      return response;
    } catch (error) {
      debugPrint('errorFromApi : $error');
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Center(child: Text('Invaild City Name')),
          icon: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    }
    return null;
  }
}
