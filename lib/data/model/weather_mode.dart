import 'package:tddweather/domain/entities/weather.dart';

class WeatherModel extends WeatherEntity {
  const WeatherModel(
      {required super.cityName,
      required super.main,
      required super.description,
      required super.iconCode,
      required super.temperature,
      required super.pressure,
      required super.humidity});
}
