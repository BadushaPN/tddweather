import 'package:dartz/dartz.dart';
import 'package:tddweather/core/error/failure.dart';
import 'package:tddweather/domain/entities/weather.dart';
import 'package:tddweather/domain/repositories/weather_repository.dart';

class GetCurrentWeather {
  final WeatherRepository weatherRepository;
  const GetCurrentWeather({required this.weatherRepository});
  Future<Either<Failure, WeatherEntity>> execute(String cityName) {
    return weatherRepository.getCurrentWeather(cityName);
  }
}
