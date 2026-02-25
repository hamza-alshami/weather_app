import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'de387b985211405f9d0133720261902&q';

  WeatherServices(this.dio);

  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
      );
      // Ensure WeatherModel has a default constructor or adjust accordingly

      weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception("Connection timeout. Please try again.");
      } else if (e.type == DioExceptionType.badResponse) {
        print("Status Code: ${e.response?.statusCode}");
        print("Full Data: ${e.response?.data}");

        String message =
            e.response?.data["error"]?["message"] ?? "Server error";
        throw Exception(message);
      } else if (e.type == DioExceptionType.unknown) {
        throw Exception("Check your internet connection.");
      } else {
        throw Exception("Unexpected error occurred.");
      }
    } catch (e) {
      throw Exception("Something went wrong.");
    }
  }
}

WeatherModel? weatherModel;
