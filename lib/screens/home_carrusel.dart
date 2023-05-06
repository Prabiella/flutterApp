import 'package:flutter/material.dart';

class HomeCarrusel extends StatelessWidget{
  const HomeCarrusel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return  const Image(  
      image: AssetImage('../assets/images/slider_widget.png'),
      fit: BoxFit.fitWidth,
      );
   
  }

  

}