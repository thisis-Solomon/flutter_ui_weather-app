import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(WeatherAppUI());
}

class WeatherAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Weather Forcust", home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _greetingText(),
            _heroImage(),
            _weatherInformation(),
            _additionalWeatherInformation(),
          ],
        ),
      ),
    );
  }

  Widget _greetingText() {
    return Container(
      padding: EdgeInsets.fromLTRB(28, 24, 16, 25),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.location_on_outlined),
              Text(
                "Lusaka",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            "Good Morning",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _heroImage() {
    return Container(
      alignment: Alignment.topCenter,
      child: Image.asset('assets/images/storm.png', height: 250, width: 250),
    );
  }

  Widget _weatherInformation() {
    return Column(
      children: [
        Text(
          "21\u00B0C",
          style: TextStyle(fontSize: 58, fontWeight: FontWeight.bold),
        ),
        Text(
          "Thunderstorm",
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Friday 16",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(width: 5),
            Text(
              '09:41 AM',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _additionalWeatherInformation() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 15),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white.withValues(alpha: 15)),
          ),
          padding: EdgeInsets.only(left: 25, right: 25, bottom: 40, top: 30),
          margin: EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/sun.png',
                          height: 70,
                          width: 70,
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sunrise",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text("5:34 am", style: TextStyle(fontSize: 22)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/moon-and-stars.png',
                          height: 70,
                          width: 70,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sunset",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text("6:34 pm", style: TextStyle(fontSize: 22)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/hot.png',
                          height: 70,
                          width: 70,
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Temp Max",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text("12\u00B0C", style: TextStyle(fontSize: 22)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/cold.png',
                          height: 70,
                          width: 70,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Temp Min",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text("8\u00B0C", style: TextStyle(fontSize: 22)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
