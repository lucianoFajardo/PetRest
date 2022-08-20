// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_types_as_parameter_names
import 'package:flutter_application_1/dependencies/dependencies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final titles = [''];  //! aqui tengo que guardar los nombres que voy a mostrar en pantalla como la perrera , veterinaria , etc
    final menuOptions = AppRoutsMenu.screensOptionsMenu;
    
    return Scaffold(
     // appBar: AppBar(title: Text("Home Screen"), actions: [Icon(Icons.circle)],),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(padding:EdgeInsets.all(10),
            child : SafeArea(child: Text("Home Page",style: TextStyle(fontSize: 30, color: Colors.black),textAlign:TextAlign.right,)),
          ),
          //! this part is horizontal scroll
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext, index) => 
              CardCustomWidget(titles: titles , color: Colors.purple.shade100,), //* this desing the cards
            ),
          ),
      
          Expanded(
            child: SingleChildScrollView(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: menuOptions.length,
                    itemBuilder: (context, i) => 
                    ListTitileCustom(routs:menuOptions[i].routs , txtTit: 'sss', txtSub: '', trilingIcon: menuOptions[i].trilingIcon, screen: menuOptions[i].screen)
                  ),
                ),
              ],
              ),
            ),
          ),
        ],
      )
    );
  }
}

class ListTitileCustom extends StatelessWidget {
  const ListTitileCustom({
    required this.routs,
    required this.txtTit,
    required this.txtSub,
    required this.trilingIcon,
    this.colBack,
    required this.screen,
  });

  final String txtTit;
  final String txtSub;
  final Color? colBack;
  final IconData? trilingIcon;
  final Widget screen;
  final String routs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
         //* This color card background
        decoration: BoxDecoration(
          color: colBack, 
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.fromLTRB(15, 14, 25, 0),
          title: Text(txtTit),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(txtSub),
          ),

          trailing: IconButton(onPressed: (){
            

          }, icon: Icon(trilingIcon)),
        ),
      ),
    );
  }
}



