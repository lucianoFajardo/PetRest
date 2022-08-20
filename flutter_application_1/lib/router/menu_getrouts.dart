import 'package:flutter_application_1/dependencies/dependencies.dart';
import 'package:flutter_application_1/screens/home.dart';

class AppRoutsMenu {

  static const initRout = 'login';

  static final screensOptionsMenu = <ListTitileCustom>[
    ListTitileCustom(txtTit: 'caras', txtSub: 'sexoo', trilingIcon: Icons.ac_unit, routs: 'login',screen: LoginScreen(),),
  ];

  static Map<String , Widget Function(BuildContext)> getMenuRouts(){
   
    Map<String , Widget Function(BuildContext)> MenuRouts = {}; 

    for(var optionMenu in screensOptionsMenu){
      MenuRouts.addAll({optionMenu.routs : (BuildContext context) => optionMenu.screen});
    }
    return MenuRouts;
  }
}

