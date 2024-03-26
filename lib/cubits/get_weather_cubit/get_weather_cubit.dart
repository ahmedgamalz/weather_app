import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/screens/search_page.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(super.initialState);

  GetWeather({required String cityName}) async {
    weatherModel =
        await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
  }
}
