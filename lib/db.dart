import 'package:hive_flutter/hive_flutter.dart';

final db = DB();

class DB {
  late Box userBox;

  Future<void> init() async {
    await Hive.initFlutter();
    userBox = await Hive.openBox('Theme');
  }

  final String _theme = 'theme';
  Future<void> updateTheme(bool isDark) async {
    await userBox.put(_theme, isDark);
  }

  bool getCurrentTheme() {
    return userBox.get(_theme, defaultValue: true) as bool;
  }
}
