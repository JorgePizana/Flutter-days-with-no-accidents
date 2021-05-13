import 'package:flutter/material.dart';

class ThemeBuilder {
  ThemeBuilder._();

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.white,

  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    backgroundColor: Colors.grey,
  );

}