import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color darkBackground = Color(0xff0E1222);
  static const Color lightBackground = Colors.white;
  // static const Color goldenDark = Color(0XFFB4802B);
  // static const Color goldenLight = Color(0XFFF6DD7A);
  // static const Color grey3 = Color(0xff828282);
  // static const Color grey4 = Color(0xffBDBDBD);

  // =============  Dark / White  ================
  //Theme.of(context).background -> darkBackground / white
  //Theme.of(context).dividerColor -> white / darkBackground

  //Theme.of(context).primaryColor -> goldenLight / darkBackground
  //Theme.of(context).hintColor -> white /  white

  //Theme.of(context).scaffoldBackgroundColor -> darkBackground / goldenLight

  //primaryColorLight -> darkBackground / goldenDark

  //primaryColorDark -> goldenLight / goldenDark
  //secondaryHeaderColor -> grey4 / grey4
  //primaryCol -> darkBackground / goldenLight

  //

  static final ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: lightBackground,
        fontFamily: "audiowide",
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      color: darkBackground,
      iconTheme: IconThemeData(color: lightBackground),
    ),
    hintColor: darkBackground,
    backgroundColor: darkBackground,
    primaryColor: lightBackground,
    primaryColorLight: lightBackground,
    primaryColorDark: darkBackground,
    secondaryHeaderColor: darkBackground,
    scaffoldBackgroundColor: darkBackground,
    //colorSchemeSeed: Colors.white,
    // colorScheme: const ColorScheme.dark(
    //   primary: darkBackground,
    //   secondary: goldenDark,
    //   onPrimary: goldenLight,
    // ),
    iconTheme: const IconThemeData(
      color: darkBackground,
    ),
    unselectedWidgetColor: darkBackground,
    disabledColor: darkBackground,
    // textTheme: const TextTheme(
    //   headline1: TextStyle(
    //     color: goldenLight,
    //     fontFamily: "audiowide",
    //     fontSize: 30,
    //   ),
    //   headline2: TextStyle(
    //     color: goldenLight,
    //     fontFamily: "audiowide",
    //     fontSize: 26,
    //   ),
    //   headline3: TextStyle(
    //     color: goldenLight,
    //     fontFamily: "audiowide",
    //     fontSize: 24,
    //   ),
    //   headline4: TextStyle(
    //     color: goldenLight,
    //     fontFamily: "audiowide",
    //     fontSize: 20,
    //   ),
    //   headline5: TextStyle(
    //     color: goldenLight,
    //     fontFamily: "audiowide",
    //     fontSize: 18,
    //   ),
    //   headline6: TextStyle(
    //     color: goldenLight,
    //     fontFamily: "audiowide",
    //     fontSize: 16,
    //   ),
    // ),
    dividerColor: Colors.white,
    dividerTheme: const DividerThemeData(color: lightBackground),
  );

  static final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: darkBackground,
        fontFamily: "audiowide",
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      color: Colors.white,
      iconTheme: IconThemeData(color: darkBackground),
    ),
    backgroundColor: lightBackground,
    //colorSchemeSeed: darkBackground,
    primaryColor: darkBackground,
    primaryColorLight: darkBackground,
    primaryColorDark: darkBackground,
    secondaryHeaderColor: lightBackground,
    scaffoldBackgroundColor: lightBackground,
    unselectedWidgetColor: darkBackground,
    disabledColor: darkBackground,
    // colorScheme: const ColorScheme.light(
    //   primary: goldenDark,
    //   secondary: darkBackground,
    //   onPrimary: goldenDark,
    // ),
    // iconTheme: const IconThemeData(
    //   color: goldenDark,
    // ),
    textTheme: const TextTheme(
      headline1: TextStyle(
          color: darkBackground, fontFamily: "audiowide", fontSize: 30),
      headline2: TextStyle(
          color: darkBackground, fontFamily: "audiowide", fontSize: 26),
      headline3: TextStyle(
          color: darkBackground, fontFamily: "audiowide", fontSize: 24),
      headline4: TextStyle(
          color: darkBackground, fontFamily: "audiowide", fontSize: 20),
      headline5: TextStyle(
          color: darkBackground, fontFamily: "audiowide", fontSize: 18),
      headline6: TextStyle(
          color: darkBackground, fontFamily: "audiowide", fontSize: 16),
    ),
    dividerColor: darkBackground,
    dividerTheme: const DividerThemeData(color: darkBackground),
  );
}
