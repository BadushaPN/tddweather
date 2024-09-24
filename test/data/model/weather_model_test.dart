import 'package:flutter_test/flutter_test.dart';
import 'package:tddweather/data/model/weather_mode.dart';
import 'package:tddweather/domain/entities/weather.dart';

void main() {
  const testWeatherModel = WeatherModel(
      cityName: '',
      main: '',
      description: '',
      iconCode: '',
      temperature: 0,
      pressure: 0,
      humidity: 0);

  test("Should be a subclass of weatherentity", () async {
    expect(testWeatherModel, isA<WeatherEntity>());
  });
}
