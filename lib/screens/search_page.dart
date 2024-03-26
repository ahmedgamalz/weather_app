import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: TextField(
            onSubmitted: (value) async {
              weatherModel = await WeatherService(Dio())
                  .getCurrentWeather(cityName: value);

              Navigator.pop(context);
            },
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                suffixIcon: Icon(Icons.search),
                labelText: 'Search',
                hintText: 'Enter City Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green))),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;
