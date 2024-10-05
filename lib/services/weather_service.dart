import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '6f02f149f92b411d8a100413230510%20';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentMethod({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'oops there was an error try later';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('oops there is an error try later');
    }
  }
}
