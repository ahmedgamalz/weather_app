import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_page.dart';
import 'package:weather_app/widgets/noWeatherBody.dart';
import 'package:weather_app/widgets/weatherBody.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchPage();
                }));
              },
              icon: Icon(Icons.search)),
        ],
      ),
      body: weatherModel == null ? NoWeatherBody() : WeatherBody(),
    );
  }
}
