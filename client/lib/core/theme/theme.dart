import 'package:client/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static final darkThemeMode =ThemeData.dark().copyWith(
   scaffoldBackgroundColor: Pallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder:OutlineInputBorder(
        borderSide: const BorderSide(
          color: Pallete.gradient2,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Pallete.gradient1,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}