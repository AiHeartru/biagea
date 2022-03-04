import 'package:shared_preferences/shared_preferences.dart';

class SPUtil {

  static late SharedPreferences _sharedPreferences;

  static Future<bool> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return true;
  }

  static Future setItem(String key, dynamic value) async {
    switch(value.runtimeType) {
      case String: {
        _sharedPreferences.setString(key, value);
      }
      break;
      case bool: {
        _sharedPreferences.setBool(key, value);
      }
      break;
      case int: {
        _sharedPreferences.setInt(key, value);
      }
      break;
      case double: {
        _sharedPreferences.setDouble(key, value);
      }
      break;
      case List<String>: {
        _sharedPreferences.setStringList(key, value);
      }
      break;
      default: {
        return;
      }
    }
  }

  static void removeItem(String key) async {
    if(_sharedPreferences.containsKey(key)) {
      _sharedPreferences.remove(key);
    }
  }

  static Future<String?> getItemString(String key) async {
    return _sharedPreferences.getString(key);
  }

  static Future<int?> getItemInt(String key) async {
    return _sharedPreferences.getInt(key);
  }

  static Future<bool?> getItemBool(String key) async {
    return _sharedPreferences.getBool(key);
  }

  static Future<double?> getItemDouble(String key) async {
    return _sharedPreferences.getDouble(key);
  }
}