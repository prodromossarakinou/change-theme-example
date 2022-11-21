import 'package:flutter/material.dart';

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