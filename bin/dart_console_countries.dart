import 'package:dart_console_countries/country_process.dart';

Future<void> main(List<String> arguments) async {
  var country = await getCountry('spa');

  if (country != null) {
    print('=' * 50);
    print('País: ${country.name}');
    print('Población: ${country.population}');
    print('Frotera(s):');
    country.borders.forEach((element) => print('   - $element'));
    print('Lenguages:');
    country.languages.forEach((element) => print('   - ${element.name}'));
    print('Latitud: ${country.latlng.first}');
    print('Longitud: ${country.latlng.last}');
    print('Moneda(s):');
    country.currencies.forEach((element) => print('   - ${element.name}'));
    print('Bandera: ${country.flag}');
    print('=' * 50);
  } else {
    print('El código de país ingresado no es válido');
  }
}
