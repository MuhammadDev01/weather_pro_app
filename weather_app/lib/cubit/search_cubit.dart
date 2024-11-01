// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:weather_app/helper/dio_helper.dart';
// import 'package:weather_app/models/weathter_info_model.dart';

// part 'search_state.dart';

// class AppCubit extends Cubit<AppStates> {
//   AppCubit() : super(SearchInitialState());
//   static AppCubit get(context) => BlocProvider.of(context);
//   WeatherInfoModel? model;

//   Future<void> getWeather({
//     required String cityName,
//     required BuildContext context,
//   }) async {
//     emit(SearchLoadingState());
//     DioHelper.getWeather(cityName, context).then((value) {
//       if (value?.data != null) {
//         model = WeatherInfoModel.fromJson(value!.data);
//         Navigator.pop(context);
//       }

//       emit(SearchSuccessState());
//     }).catchError((error) {
//       debugPrint('errorFromCubit : $error');

//       emit(SearchFailureState());
//     });
//   }
// }
