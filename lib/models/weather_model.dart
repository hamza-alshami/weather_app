class WeatherModel {
  final String cityName;
  final String date;
  String? img;
  final String temp;
  final String maxTemp;
  final String minTemp;
  final String dayStatus;

  WeatherModel({
    required this.cityName,
    required this.date,
    this.img,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.dayStatus,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: json['current']['last_updated'],
      temp: json['current']['temp_c'],
      maxTemp:
          json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp:
          json['forecast']['forecastday'][0]['day']['mintemp_c'],
      dayStatus:
          json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
