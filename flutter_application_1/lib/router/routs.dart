// ignore_for_file: prefer_const_constructors
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/dependencies/dependencies.dart';

class Routs{

 static const initialRouts = AppRoutsMenu.initRout;

  static Map<String,Widget Function(BuildContext)> getRouts = 
    
    <String , WidgetBuilder>{
      'login':(BuildContext context) => LoginScreen(),
      'register':(BuildContext context) =>  RegisterScreen(),
      'homePage':(BuildContext context) =>  HomeScreen(),
      'pageInfo':(BuildContext context) =>  WidgetPageInfo(),
    };
    
 static onGenerateRoute(RouteSettings settings) {
    print("{$settings.name}");
    return MaterialPageRoute(   
      builder: (BuildContext context) => LoginScreen()
    );
 }
 
}

