import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/dependencies/dependencies.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: Colors.transparent,
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20 , left: 25),
                child: Title(color: Colors.black, child: const Text('Permitenos saber un poco de ti ..', style:TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black)),
                ),
              ),
              
              BackGroundPersonal(),

              //* this part register google , facebook and gmail
             
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.4 , top:MediaQuery.of(context).size.height * 0.65 , right:15 , bottom: 30 ),
                child: MaterialButton(
                  height: 50,
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, 'login');
                  }, 
                  color: const Color.fromRGBO(46, 2, 89, 0.69), 
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  child: const Text('Ingresar' , style: TextStyle(color: Colors.white),),
                )
              ),
              
            ],
          ),
        ),
      )
    );
  }
}






