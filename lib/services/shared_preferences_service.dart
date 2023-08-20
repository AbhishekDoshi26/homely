import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  SharedPreferenceService();
  late SharedPreferences _sharedPreference;

  Future<void> init() async {
    _sharedPreference = await SharedPreferences.getInstance();
  }

  Future<void> saveHome({required String houseId}) async {
    await init();
    final savedHouses = await getSavedHouses()
      ..add(houseId);
    await _sharedPreference.setStringList('savedHouses', savedHouses);
  }

  Future<void> removeHome({required String houseId}) async {
    await init();
    final savedHouses = await getSavedHouses()
      ..remove(houseId);
    await _sharedPreference.setStringList('savedHouses', savedHouses);
  }

  Future<List<String>> getSavedHouses() async {
    await init();
    return _sharedPreference.getStringList('savedHouses') ?? <String>[];
  }
}
