import 'package:flutter/material.dart';

class RowPlesiHome extends StatelessWidget{
  const RowPlesiHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
   Column(
        children: const <Widget> [
         Image(image:  AssetImage('../assets/images/destacado1.png')),
         Text('Contenido uno', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 67, 51, 2), fontSize:12 )),
        ],
      ),
      
       Column(
        children: const <Widget> [
         Image(image:  AssetImage('../assets/images/destacado2.png')),
        Text('Contenido dos', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 67, 51, 2), fontSize:12 )),
        ],
      ),   
  ],
);
  }

}