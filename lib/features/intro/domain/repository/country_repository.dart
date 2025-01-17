import 'package:paisa/features/intro/domain/entities/country_entity.dart';

abstract interface class CountryRepository {
  List<CountryEntity> fetchCountries();
  CountryEntity? fetchSelectedCountry();
  Future<void> saveSelectedCountry(CountryEntity entity);
}
