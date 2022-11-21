
import 'package:change_theme_example/theme/app_theme_extension.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.black87,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.black,
      ),
    ),
      extensions: const <ThemeExtension<AppThemeExtension>>[
        AppThemeExtension(
          themeIconFolder: 'assets/img/light',
          themeIcon: Icons.dark_mode,
          floatingButtonColor: Colors.blueGrey,
        ),
      ]
  );


  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black87,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white12,
      ),
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.white,
      ),
    ),
    extensions: const <ThemeExtension<AppThemeExtension>>[
      AppThemeExtension(
        themeIconFolder: 'assets/img/dark',
        themeIcon: Icons.light_mode,
        floatingButtonColor: Colors.red,
      ),
    ]
  );
}