import 'package:dartz/dartz.dart';
import 'package:tddweather/core/error/failure.dart';
import 'package:tddweather/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String cityName);
}
