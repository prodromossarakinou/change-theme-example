import 'package:flutter/material.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  const AppThemeExtension({
    required this.themeIconFolder,
    required this.themeIcon,
    required this.floatingButtonColor,
  });

  final String themeIconFolder;
  final IconData themeIcon;
  final Color floatingButtonColor;

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    String? themeIconFolder,
    IconData? themeIcon,
    Color? floatingButtonColor,
  }) {
    return AppThemeExtension(
        themeIconFolder: themeIconFolder ?? this.themeIconFolder,
        themeIcon: themeIcon ?? this.themeIcon,
        floatingButtonColor: floatingButtonColor ?? this.floatingButtonColor,
    );
  }

  @override
  ThemeExtension<AppThemeExtension> lerp(
      ThemeExtension<AppThemeExtension>? other, double t) {
    return AppThemeExtension(
      themeIconFolder: themeIconFolder,
      themeIcon: themeIcon,
      floatingButtonColor: floatingButtonColor,
    );
  }
}
