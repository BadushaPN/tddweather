import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:tddweather/domain/repositories/weather_repository.dart';

@GenerateMocks(
  [WeatherRepository],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}
