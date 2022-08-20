// ignore_for_file: prefer_const_constructors

import 'dart:ffi';
import 'dart:ui';
import 'package:flutter_application_1/dependencies/dependencies.dart';

// ignore: unused_element
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

 // static Padding padding =  Padding(padding:EdgeInsets.all(10), child: TextFormField(),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login",style: TextStyle(color: Colors.black),),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children:[
              BackGroundPersonal(),
              
              const SizedBox(height: 15),
        
              Center(
                child: Image.asset('images/imageportada.png',
                  height: 280,
                  width: 400,
                ),
              ),
      
              Padding( padding: EdgeInsets.only(left:45 , top:MediaQuery.of(context).size.height * 0.35  ,right:15 ,bottom: 15),
               child: Text('Bienvenido !!', style:TextStyle(fontSize: 30 , fontWeight: FontWeight.bold, decoration: TextDecoration.underline))
              ),
      
              //* -> this txt the user
              Padding(
                padding: EdgeInsets.only(left:15 , top:MediaQuery.of(context).size.height * 0.42  ,right:15 ,bottom: 15),
                child: TextFormField(
                    //controller: _rut, //-> este es el dato que guarda lo que ingresemos del rut **        
                    decoration: InputDecorations.inputshapeDecoration( 
                      hintText: 'Correo' , 
                      labelText: 'Correo',
                      iconsShape: Icons.circle
                    ),
                ),
              ),
        
              //* -> this pass the user
              Padding(
                padding: EdgeInsets.only(left:15 , top:MediaQuery.of(context).size.height * 0.51 , right:15 , bottom: 30 ),
                  child: TextFormField(
                  autocorrect: false,     // para la autocorrecion la inavilitamos 
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword, 
                    // tipo de datos que ingresaremos 
                  decoration: InputDecorations.inputshapeDecoration( 
                      hintText: 'Contraseña' , 
                      labelText: 'Contraseña',
                      iconsShape: Icons.password,   
                    ),
                  ),
              ),
      
              //! this is button ingresar
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.4 , top:MediaQuery.of(context).size.height * 0.64 , right:15 , bottom: 30 ),
                child: MaterialButton(
                  height: 50,
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, 'homePage');
                  }, 
                  color: const Color.fromRGBO(46, 2, 89, 0.69), 
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  child: const Text('Ingresar' , style: TextStyle(color: Colors.white),),
                )
              ),
      
              //! this button register 
              Padding(
                padding: EdgeInsets.only(left:15 , top:MediaQuery.of(context).size.height * 0.72 , right:15 , bottom: 30 ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text('¿No tienes cuenta?, Registrate.', style:TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Color.fromRGBO(85, 3, 166, 1))),
                    const SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromRGBO(111, 4, 217, 1),
                      child: IconButton(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, 'register');  //* this navegation for page Register , continue programing
                        }, 
                        icon: Icon(Icons.arrow_forward_ios_rounded),
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],  
          ),
        ),
      )
    );
  }
}

class BackGroundPersonal extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size; // nos obtiene el tamaño de la pantalla y nos lo guarda en una variable llamada size 
    
    return Container(
      width: double.infinity,
      height: size.height * 0.85, 
      child: Stack(
        children: [
          Positioned(child: Bubble() , bottom: size.height*-0.1, left: 16 , height: 46,) ,
          Positioned(child: Bubble(),  bottom: 150, right: -20, height: 35) ,
          Positioned(child: Bubble() , bottom: 86, left: 16 , height: 35,) ,
          Positioned(child: Bubble(),  bottom: 68, right: 35, height: 34) ,
          Positioned(child: Bubble() , bottom: 250, left:-30 , height: 55,) ,
          Positioned(child: Bubble(),  bottom: 10, right: 56, height: 20) ,
          Positioned(child: Bubble() , bottom: 1, left: 150 , height: 32),
          Positioned(child: Bubble() , bottom: -2, right: 12 , height: 56),
          Positioned(child: Bubble() , bottom: 350, right: 120 , height: 35,),
          Positioned(child: Bubble() , bottom: 350, right: -25 , height: 25,),
          Positioned(child: Bubble() , top: 8, left: 350 , height: 40), // esto es para la posicion para colocar las burbujas de manera que se ve en la pantalla con una altura y un borde 
        ],
      ),
    );
  }
}

class Bubble extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Container(
       width: 55,  // tamaño de las pelotitas que se muestran en pantalla 
       height: 55,
       // ignore: prefer_const_constructors
       decoration: BoxDecoration(
         image: DecorationImage(
          image: ExactAssetImage('images/pawprint.png',),
          ),
       ),
     );
   }
} 

