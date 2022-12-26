// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chance_dart/chance_dart.dart';

part 'country.g.dart';

@ChanceType()
class Country {
  Country({
    required this.name,
    required this.id,
  });
  @ChanceField(
    alias: ChanceAlias.country,
  )
  final String name;

  @ChanceField(
    alias: ChanceAlias.integer,
  )
  final String id;

  static List<Country> get generatedCountries => generatedModels();
}
