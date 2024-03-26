import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/screens/home_page.dart';
import 'package:weather_app/screens/search_page.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
          builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
                builder: (context, state) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: ThemeData(
                        primarySwatch: getThemeColor(
                            BlocProvider.of<GetWeatherCubit>(context)
                                .weatherModel
                                ?.weatherCondition)),
                    home: Home(),
                  );
                },
              )),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  switch (condition) {
    case 'Sunny':
    case 'Clear':
      {
        return Colors.orange;
      }
    case 'Blizzard':
    case 'Patchy snow possible':
    case 'Patchy sleet possible':
    case 'Patchy freezing drizzle possible':
    case 'Patchy rain nearby':
    case 'Blowing snow':
      {
        return Colors.blue;
      }
    case 'Freezing fog':
    case 'Fog':
    case 'Heavy Cloud':
    case 'Mist':
    case 'Fog':
      {
        return Colors.blueGrey;
      }
    case 'Patchy rain possible':
    case 'Heavy Rain':
    case 'Showers':
    case 'partly cloudy':
      {
        return Colors.pink;
      }
    case 'Thundery outbreaks possible':
    case 'Moderate or heavy snow with thunder':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy rain with thunder':
    case 'Patchy light rain with thunder':
      {
        return Colors.deepPurple;
      }
    default:
      return Colors.blueGrey;
  }
}
