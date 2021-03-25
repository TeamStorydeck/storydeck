import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt locator = GetIt.I;

Future<void> configureLocator() async {
  final _prefs = await SharedPreferences.getInstance();
  locator.registerSingleton(_prefs);
}
