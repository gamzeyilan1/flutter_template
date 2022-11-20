import 'package:flutter/material.dart';
import 'package:flutter_template/core/constants/enums/app_theme_enum.dart';
import 'package:flutter_template/core/init/theme/app_theme_dark.dart';
import 'package:flutter_template/core/init/theme/app_theme_default.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeDark.theme;
  ThemeData get currentTheme => AppThemeDark.theme;

  void changeValue (AppThemes theme) {
    if(theme == AppThemes.DARK) {
      _currentTheme = AppThemeDark.theme;
    } else {
      _currentTheme = AppThemeDefault.theme;
    }
    notifyListeners();
  }
}