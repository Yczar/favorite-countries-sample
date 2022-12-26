import 'package:favorite_country_sample/provider/favorite_provider.dart';
import 'package:favorite_country_sample/screens/favorite_countries_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/country.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (_, provider, ___) => Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: const Text(
              'Countries',
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const FavoriteCountriesScreen(),
              ),
            );
          },
          child: const Icon(
            Icons.favorite_border,
          ),
        ),
        body: ListView.builder(itemBuilder: (_, index) {
          final country = Country.generatedCountries[index];
          return ListTile(
            title: Text(
              country.name,
            ),
            trailing: IconButton(
              onPressed: () {
                provider.updateFavoriteCountries(country);
              },
              icon: Icon(
                provider.exists(country)
                    ? Icons.favorite_outlined
                    : Icons.favorite_border,
              ),
            ),
          );
        }),
      ),
    );
  }
}
