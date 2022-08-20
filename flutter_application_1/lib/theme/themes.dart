import 'package:flutter_application_1/dependencies/dependencies.dart';

//* themes global for the application
class ThemesGlobal{

  static const Color colorBackground = Colors.white;
  static const Color colorAppBar = Colors.red;
 
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      color: colorAppBar,
    )
  );

  static final ThemeData personalTheme = ThemeData(
    scaffoldBackgroundColor: colorBackground,
  );

}

