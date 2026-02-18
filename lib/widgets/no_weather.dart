import 'package:flutter/material.dart';

class NoWeatherScreen extends StatelessWidget {
  const NoWeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "There is no weather 😔\nstart searching now",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 22,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
