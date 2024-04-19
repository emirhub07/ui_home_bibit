import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
        background: Color(0xffF7F7F7),
        primary: Color(0xff22A271),
        secondary: Color(0xff858585),
        inversePrimary: Color(0xffFFFFFF),
        secondaryContainer: Color(0xffEAF9F4),


    ),
    textTheme: ThemeData.light().textTheme.apply(
        bodyColor: Color(0xff333333),
        displayColor: Colors.black
    )
);