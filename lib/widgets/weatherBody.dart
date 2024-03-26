import 'package:flutter/material.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Alexandria',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'updated at : 23:46',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/cloudy.png'),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    '17',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Column(
                    children: [
                      Text('maxTemp : 17'),
                      Text('mINTemp : 10'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Light Rain',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
