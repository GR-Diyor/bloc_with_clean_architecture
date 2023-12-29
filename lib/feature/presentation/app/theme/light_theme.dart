import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  primaryColor: Colors.white,
  brightness: Brightness.light,
  highlightColor: Colors.blue.shade300,
  hintColor: const Color(0xFF9E9E9E),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
);