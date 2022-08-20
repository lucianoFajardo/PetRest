import 'package:flutter_application_1/dependencies/dependencies.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false , 
      home: MyApp(),
      theme: ThemesGlobal.personalTheme,
      initialRoute: Routs.initialRouts,   //* this initial routs for the application
      routes: Routs.getRouts,
      onGenerateRoute: (settings) => Routs.onGenerateRoute(settings),
    );
  }
}





