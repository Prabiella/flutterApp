

import 'package:flutter/material.dart';
import 'package:flutter_xd/screens/home_carrusel.dart';
import 'package:flutter_xd/screens/home_grid.dart';
import 'package:flutter_xd/screens/home_row.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const Text('ESTREAMANIA udg'),
        backgroundColor: Colors.redAccent,
        centerTitle:true,
        ),


       body: Container(
       color: Color.fromRGBO(215, 215, 215, 1),
        child: Center (
           child: Column(
          
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              HomeCarrusel(),
             /* Text('Titulo'),
              Text('Descripción'), */
              RowPlesiHome(),
              HomeGrid(),

             
            ],

          ),
        ),
        ), 



    /*    body: Center(
          
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              HomeCarrusel(),
             /* Text('Titulo'),
              Text('Descripción'), */
              RowPlesiHome(),
              HomeGrid(),

             
            ],

          ),
         

      ), */

      

    );
  }

}