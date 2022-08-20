// ignore_for_file: prefer_const_constructors
import 'package:flutter_application_1/dependencies/dependencies.dart';

//* this card blue the homepage 

class CardCustomWidget extends StatelessWidget {

  const CardCustomWidget({
    Key? key,
    required this.titles,
    this.direction,
    required this.color,
  }) : super(key: key);

  final List<String> titles; 
  final String? direction;
  final Color color;

  @override
  Widget build(BuildContext context) {
  var heading = 'Titulo de veterinaria , perrera';
  var subheading = 'direccion local';
  var cardImage = NetworkImage(
       'https://source.unsplash.com/random/?house');
    // ignore: unused_local_variable
  final size = MediaQuery.of(context).size;

    return SizedBox(
    width: size.width * 0.8,
      child: Card(
        color: color,
        child: Column(
          children: [
            ListTile(
              title: Text(heading),
              subtitle: Text(subheading),
              trailing: Icon(Icons.assistant_direction_sharp),
            ),
            InkWell(
              onTap: (){Navigator.pushReplacementNamed(context, 'pageInfo');},
              child: Ink.image(
                height: 250,
                image: cardImage,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}