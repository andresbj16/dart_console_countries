import 'package:dart_console_countries/clases/country.dart';
import 'package:http/http.dart' as http;

Future<Country> getCountry(String countryCode) async {
  Country country;

  final url = 'https://restcountries.eu/rest/v2/alpha/$countryCode';

  await http.get(url).then((value) {
    if (value.statusCode == 200) {
      country = countryFromJson(value.body);
    }
  });

  return country;
}
