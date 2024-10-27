import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  late SharedPreferences _prefs;

  Future<void> saveData(String key, String value) async {
    await _prefs.setString(key, value);
  }

  String? getData(String key) {
    return _prefs.getString(key);
  }
}
