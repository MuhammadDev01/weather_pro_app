class WeatherInfoModel {
  late String cityName;
  late double maxTemp;
  late double minTemp;
  late double currentTemp;
  late String state;
  late String image;
  late DateTime date;

  WeatherInfoModel.fromJson(Map<String, dynamic> json) {
    cityName = json['location']['name'];
    currentTemp = json['current']['temp_c'];
    maxTemp = json['forecast']['forecastday'][0]['day']['maxtemp_c'];
    minTemp = json['forecast']['forecastday'][0]['day']['mintemp_c'];
    state = json['forecast']['forecastday'][0]['day']['condition']['text'];
    image = json['forecast']['forecastday'][0]['day']['condition']['icon'];
    date = DateTime.parse(json['current']['last_updated']);
  }
}
