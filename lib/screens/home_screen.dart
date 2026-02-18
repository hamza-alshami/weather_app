import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_veiw_screen.dart';
import 'package:weather_app/widgets/no_weather.dart';
import 'package:weather_app/widgets/weather_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App",
          style: TextStyle(color: Colors.white),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
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
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.blue,
      ),

      body: WeatherScreenWidget(),
    );
  }
}
