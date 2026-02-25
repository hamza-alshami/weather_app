import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/search_veiw_screen.dart';
import 'package:weather_app/services/weather_services.dart';
import 'package:weather_app/widgets/no_weather.dart';
import 'package:weather_app/widgets/weather_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Add a WeatherModel? variable (replace with your actual logic for getting weather data)
  // final WeatherModel? weatherModel = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App", style: TextStyle(color: Colors.white)),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchVeiwScreen();
                    },
                  ),
                );
              },
              icon: Icon(Icons.search, color: Colors.white),
            ),
          ),
        ],
        backgroundColor: Colors.blue,
      ),

      body: weatherModel == null ? NoWeatherScreen() : WeatherScreenWidget(),
    );
  }
}
