import 'package:flutter/material.dart';

class HomeGrid extends StatelessWidget{
 const HomeGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
  children: <Widget>[
   Column(
        children: const <Widget> [
         Image(image:  AssetImage('../assets/images/row01.png'), width: 150),
         Text('Contenido uno', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 67, 51, 2), fontSize:12 )),
        ],
      ),
      
       Column(
        children: const <Widget> [
         
         Image(image:  AssetImage('../assets/images/row01.png'), width: 150),
        Text('Contenido dos', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 67, 51, 2), fontSize:12 )),
        ],
      ),   
      

      Column(
        children: const <Widget> [
         Image(image:  AssetImage('../assets/images/row01.png'), width: 150),
        Text('Contenido dos', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 67, 51, 2), fontSize:12 )),
        ],
      ),   


  ],
);

}
}