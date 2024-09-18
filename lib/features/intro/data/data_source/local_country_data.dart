///////////////////////////////////////////////////////////////////////////////
///
/// All thanks the https://github.com/Daniel-Ioannou for the data `flutter_currency_picker`
/// Link: https://github.com/Daniel-Ioannou/flutter_currency_picker/blob/master/lib/src/currencies.dart
///
///////////////////////////////////////////////////////////////////////////////
library;

const List<Map<String, dynamic>> localCountriesData = [
  {
    'code': 'USD',
    'name': 'United States Dollar',
    'symbol': '\$',
    'flag': 'USD',
    'decimal_digits': 2,
    'number': 840,
    'name_plural': 'US dollars',
    'thousands_separator': ',',
    'decimal_separator': '.',
    'space_between_amount_and_symbol': false,
    'symbol_on_left': true,
    'pattern': '#,##0.00',
  },
  {
    'code': 'EUR',
    'name': 'Euro',
    'symbol': '€',
    'flag': 'EUR',
    'decimal_digits': 2,
    'number': 978,
    'name_plural': 'Euros',
    'thousands_separator': ' ',
    'decimal_separator': ',',
    'space_between_amount_and_symbol': true,
    'symbol_on_left': false,
    'pattern': '#,##0.00',
  },
  {
    'code': 'JPY',
    'name': 'Japanese Yen',
    'symbol': '¥',
    'flag': 'JPY',
    'decimal_digits': 0,
    'number': 392,
    'name_plural': 'Japanese yen',
    'thousands_separator': ',',
    'decimal_separator': '.',
    'space_between_amount_and_symbol': false,
    'symbol_on_left': true,
    'pattern': '#,##0.00',
  },
  {
    'code': 'GBP',
    'name': 'British Pound',
    'symbol': '£',
    'flag': 'GBP',
    'decimal_digits': 2,
    'number': 826,
    'name_plural': 'British pounds sterling',
    'thousands_separator': ',',
    'decimal_separator': '.',
    'space_between_amount_and_symbol': false,
    'symbol_on_left': true,
    'pattern': '#,##0.00',
  },
  {
    'code': 'AUD',
    'name': 'Australian Dollar',
    'symbol': '\$',
    'flag': 'AUD',
    'decimal_digits': 2,
    'number': 36,
    'name_plural': 'Australian dollars',
    'thousands_separator': ',',
    'decimal_separator': '.',
    'space_between_amount_and_symbol': false,
    'symbol_on_left': true,
    'pattern': '#,##0.00',
  },
  {
    'code': 'CAD',
    'name': 'Canadian Dollar',
    'symbol': '\$',
    'flag': 'CAD',
    'decimal_digits': 2,
    'number': 124,
    'name_plural': 'Canadian dollars',
    'thousands_separator': ',',
    'decimal_separator': '.',
    'space_between_amount_and_symbol': false,
    'symbol_on_left': true,
    'pattern': '#,##0.00',
  },
  {
    'code': 'CNY',
    'name': 'China Yuan Renminbi',
    'symbol': '¥',
    'flag': 'CNY',
    'decimal_digits': 2,
    'number': 156,
    'name_plural': 'Chinese yuan',
    'thousands_separator': ',',
    'decimal_separator': '.',
    'space_between_amount_and_symbol': false,
    'symbol_on_left': true,
    'pattern': '#,##0.00',
  },
  {
    'code': 'INR',
    'name': 'Indian Rupee',
    'symbol': '₹',
    'flag': 'INR',
    'decimal_digits': 2,
    'number': 356,
    'name_plural': 'Indian rupees',
    'thousands_separator': ',',
    'decimal_separator': '.',
    'space_between_amount_and_symbol': false,
    'symbol_on_left': true,
    'pattern': '#,##,##0.00',
  },
  {
    'code': 'BDT',
    'name': 'Bangladeshi Taka',
    'symbol': '৳',
    'flag': 'BDT',
    'decimal_digits': 2,
    'number': 50,
    'name_plural': 'Bangladeshi takas',
    'thousands_separator': ',',
    'decimal_separator': '.',
    'space_between_amount_and_symbol': true,
    'symbol_on_left': true,
    'pattern': '#,##,##0.00',
  },
];
