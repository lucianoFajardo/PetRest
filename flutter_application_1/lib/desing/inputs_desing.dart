import 'package:flutter_application_1/dependencies/dependencies.dart';

class InputDecorations{
  
  static InputDecoration inputshapeDecoration({
    String? hintText,
    required String labelText,
    IconData? iconsShape,
  })

  {
    return InputDecoration(  

        filled: true,
        fillColor:const Color.fromRGBO(166, 138, 207, 0.9),

        hintText: hintText,     //valores que se almacenan en estas variables
        labelText: labelText,

        labelStyle: const TextStyle(
        color: Colors.white,
        fontSize: 18,),
        
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),

        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(81, 48, 130, 1),
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),

        disabledBorder: const OutlineInputBorder(         
            borderSide: BorderSide(
            color: Color.fromRGBO(43, 36, 54, 1),
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
          
      
      prefixIcon: iconsShape != null ? Icon(iconsShape , color: Colors.white,) : null  

    );
  }
}