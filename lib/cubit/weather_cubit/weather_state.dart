part of 'weather_cubit.dart';

@immutable
sealed class WeatherStates {}

final class WeatherInitialState extends WeatherStates {}

final class WeatherChangePage extends WeatherStates {}
