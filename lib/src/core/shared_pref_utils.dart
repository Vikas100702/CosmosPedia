import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefUtils {
  SharedPrefUtils._();

  static String? _token;

  static const String KEY_TOKEN = "KEY_TOKEN";
  static const String IS_FRESH_INSTALL = "is_fresh_install";

  //set bearer authorization token
  static Future<bool> setToken({required String authToken}) async {
    _token = authToken;
    return SharedPreferences.getInstance()
        .then((sharedPref) async => sharedPref.setString(KEY_TOKEN, authToken));
  }

  //Get bearer authorization token
  static Future<String?> getToken() async {
    final sharedPref = await SharedPreferences.getInstance();
    _token = sharedPref.getString(KEY_TOKEN);
    return _token;
  }

  //Set is fresh install
  static Future<bool> setFreshInstall({required bool isFresh}) {
    return SharedPreferences.getInstance().then((sharedPref) async =>
        await sharedPref.setBool(IS_FRESH_INSTALL, isFresh));
  }

  //Get isFresh install
  static Future<bool> isFreshInstall() async {
    final sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getBool(IS_FRESH_INSTALL) ?? true;
  }
}
