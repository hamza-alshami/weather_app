import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class SearchVeiwScreen extends StatelessWidget {
  const SearchVeiwScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search City")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              WeatherModel? weatherModel = await WeatherServices(
                Dio(),
              ).getCurrentWeather(cityName: value);

              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
              labelText: "Search",
              suffixIcon: Icon(Icons.search),
              hintText: "Enter city name",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amberAccent, width: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
