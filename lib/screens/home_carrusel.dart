import 'package:flutter/material.dart';

class HomeCarrusel extends StatelessWidget{
  const HomeCarrusel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset('images/ejemplo.jpg'),
    
    ],
  );
    
    
    
    
    
    
     /* const Image(  
      image: AssetImage('images/slider_widget.png'),
      fit: BoxFit.fitWidth,
      ); */
   
  }

  

}