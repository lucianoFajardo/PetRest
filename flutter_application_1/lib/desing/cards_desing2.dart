// ignore_for_file: prefer_const_constructors
import 'dart:ffi';
import 'dart:math';
import 'package:flutter_application_1/dependencies/dependencies.dart';

class CustomCards2 extends StatelessWidget {
  final int age;
  final String gender;
  final String breed;
  final String description;
  final int size;
  final String country;
  final bool adopted;

  const CustomCards2({
    Key? key,
    required  this.age,
    required  this.gender,
    required  this.breed,
    required  this.description,
    required  this.size,
    required  this.country,
    required  this.adopted,
  }) : super(key: key);

  //! aqui solo sera la parte visual pero en paginfo tienes que poner toda la informacion del animal
  
  @override
  Widget build(BuildContext context) {
      var cardImage = const NetworkImage(
       'https://source.unsplash.com/random/?pets');

      var cardImageP = const NetworkImage(
       'https://source.unsplash.com/random/?people');

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(image: cardImage , fit: BoxFit.cover,)
          ),
    
          Padding(
            padding: const EdgeInsets.all(1.0),
            child:  Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )
                ),

              child: ListTile(
                leading: Icon(Icons.catching_pokemon),
                  title: Text('Titulo descriptivo'),
                  subtitle: Text('Subtitulo descriptivo del animal'),
                  trailing: IconButton(onPressed: (){Navigator.pushReplacementNamed(context, 'login');}, icon: Icon(Icons.call)),
                ),
            ),
          ),
    
          //* aqui tendria que ir un boton para poder adoptar a un perrito o contactarse con los dueños
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: SizedBox(width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Edad : $age', style: TextStyle(fontSize: 16),),
                DividerMetod(),
                
                Text('Genero : $gender',style: TextStyle(fontSize: 16)),
                DividerMetod(),

                Text('Raza : $breed',style: TextStyle(fontSize: 16)),
                DividerMetod(),

                Text('Descripcion del animal : $description'),
                DividerMetod(),

                Text('Tamaño : $size',style: TextStyle(fontSize: 16)),
                DividerMetod(),

                Text('Region : $country',style: TextStyle(fontSize: 16)),
                DividerMetod(),

                Text('$adopted'),
                DividerMetod(),
              ],
            )),
          ),
    
        Padding(
            padding: const EdgeInsets.only(top: 10),
            child:  Card(
              color: Colors.red,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(2),
              child: Column(
                children: <Widget>[
                  // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 14, 25, 0),
                    title: Text('Nombre de usuario que publico este post'),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Conoce un poco de este usuario...'),
                    ),
                    
                    leading: ClipOval(child: Image(image: cardImageP ,fit: BoxFit.cover,
                    width: 63, height: 100,)
                    ),
                  ),
                  
                  // Usamos una fila para ordenar los botones del card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(onPressed: () => {}, child: Text('Conocer un poco')),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Divider DividerMetod() {
    return Divider(
      color: Colors.grey.shade400,
      indent: 5,
      thickness : 1,
    );
  }
}