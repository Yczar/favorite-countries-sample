import 'package:favorite_country_sample/provider/favorite_provider.dart';
import 'package:favorite_country_sample/screens/countries_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (context) => FavoriteProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CountriesScreen(),
      ),
    );
  }
}
