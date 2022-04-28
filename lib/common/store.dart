import 'package:shared_preferences/shared_preferences.dart';

class Store {
  static SharedPreferences _prefs;

  static SharedPreferences get prefs => _prefs;

  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static clear([String key]) async {
    bool res = key == null ? await _prefs.clear() : await _prefs.remove(key);
    return res;
  }
}
