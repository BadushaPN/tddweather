import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tddweather/domain/entities/weather.dart';
import 'package:tddweather/domain/usecases/get_current_weather.dart';

import '../../helper/test_helper.mocks.dart';

void main() {
  late MockWeatherRepository mockWeatherRepository;
  late GetCurrentWeather getCurrentWeather;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    getCurrentWeather =
        GetCurrentWeather(weatherRepository: mockWeatherRepository);
  });

  const testWeatherDetail = WeatherEntity(
      cityName: "Kochi",
      main: "main",
      description: "description",
      iconCode: "iconCode",
      temperature: 2.0,
      pressure: 30,
      humidity: 10);
  const testCityName = "Kochi";
  test("Should get current weather detail from the repository", () async {
//arrange
    when(mockWeatherRepository.getCurrentWeather(testCityName))
        .thenAnswer((_) async => const Right(testWeatherDetail));
//act
    final result = await getCurrentWeather.execute(testCityName);
//assert
    expect(result, const Right(testWeatherDetail));
  });
}
