import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieSlider extends StatelessWidget{
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container (
     width: double.infinity,
     height: 250,
     color: Colors.amber,
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children:  [
             
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:  Text('Lo más visto', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
          ),

        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (_, int index) {
              return Container(
                width: 134,
                height: 200,
                color: const Color.fromARGB(255, 227, 9, 9),
                margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column (
                  children: <Widget> [
                    Image.asset('assets/row01.png'),
                   const Text('Contenido uno', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 67, 51, 2), fontSize:9 )),

                    ],
                    ),
                    );
                    },
                    ),
                    ),

     ],
     ),
     
    );
   
  }


}