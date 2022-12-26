import 'package:favorite_country_sample/models/country.dart';
import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  final Map<String, Country> _favoriteCountries = {};
  Map<String, Country> get favoriteCountries => _favoriteCountries;

  bool exists(Country country) => _favoriteCountries[country.id] != null;

  void updateFavoriteCountries(Country country) {
    if (exists(country)) {
      _favoriteCountries.remove(country.id);
    } else {
      _favoriteCountries[country.id] = country;
    }
    notifyListeners();
  }
}
