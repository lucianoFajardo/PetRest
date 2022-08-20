import 'package:flutter_application_1/dependencies/dependencies.dart';

class CardInfoVeterinary extends StatelessWidget {
  const CardInfoVeterinary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cardImage = const NetworkImage(
      'https://source.unsplash.com/random/?veterinary');

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
                  color: Colors.purple.shade400,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: ListTile(
                  leading: Icon(Icons.home , color: Colors.black,),
                    title: Text('Veterinaria san jose'),
                    trailing: IconButton(onPressed: (){Navigator.pushReplacementNamed(context, 'login');}, icon: Icon(Icons.call,color: Colors.black,)),
                ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(9.0),
            child: SizedBox(width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pequeña descripcion : ', style: TextStyle(fontSize: 16),),
                Text('telefono : ',style: TextStyle(fontSize: 16)),
                Text('Horarios : ',style: TextStyle(fontSize: 16)),
                Text('ubicacion : '),
              ],
            )),
          ),

          //* this place is map for google
  
        ],
      ),
    );
  }
}