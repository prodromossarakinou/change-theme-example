

import 'package:flutter/material.dart';

class AppThemeState extends ChangeNotifier{

  ThemeType themeType  = ThemeType.dark;

  AppThemeState();

  void changeTheme() {
    switch(themeType){

      case ThemeType.light:
        themeType = ThemeType.dark;
        break;
      case ThemeType.dark:
        themeType = ThemeType.light;
        break;
    }
    notifyListeners();
  }

}

enum ThemeType{
  light,
  dark,
}

extension ThemeTypeExt on ThemeType{

  ThemeMode get mode {
    switch(this){

      case ThemeType.light:
        return ThemeMode.light;
      case ThemeType.dark:
        return ThemeMode.dark;
    }
  }
}