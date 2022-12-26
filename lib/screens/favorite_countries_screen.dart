import 'package:favorite_country_sample/provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteCountriesScreen extends StatelessWidget {
  const FavoriteCountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(builder: (_, provider, ___) {
      final favoriteCountries = provider.favoriteCountries.entries.toList();
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Favorite Countries',
          ),
        ),
        body: ListView.builder(
          itemCount: favoriteCountries.length,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(
                favoriteCountries[index].value.name,
              ),
            );
          },
        ),
      );
    });
  }
}
