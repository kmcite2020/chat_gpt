import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class ThemeModeManager {
  static final ThemeModeManager to = ThemeModeManager();
  final themeModeRM = RM.inject(
    () => ThemeMode.system,
  );
  ThemeMode get themeMode => themeModeRM.state;
  void setThemeMode(ThemeMode? themeMode) => themeModeRM.state = themeMode!;
}
