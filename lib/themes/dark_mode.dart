import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        background: Color(0xff1F1F1F),
        primary: Color(0xff22A271),
        secondary: Color(0xff858585),
        inversePrimary: Color(0xff121212),
        secondaryContainer: Color(0xff142E23)
    ),
    textTheme: ThemeData.light().textTheme.apply(
        bodyColor: Color(0xffEDEDED),
        displayColor: Colors.white,
    )
);