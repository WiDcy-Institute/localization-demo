
import 'package:shared_preferences/shared_preferences.dart';

class LanguageUtil {

  void setLanguage(String lang) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("lang", lang);
  }

  Future<String> get getLanguage async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("lang") ?? "en";
  }
}