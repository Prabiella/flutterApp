import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MovieSlider extends StatefulWidget {
  const MovieSlider({Key? key}) : super(key: key);

  @override
  _MovieSliderState createState() => _MovieSliderState();
}

class _MovieSliderState extends State<MovieSlider> {
  List<dynamic> _movies = [];

  @override
  void initState() {
    super.initState();
    _getMovies();
  }

  Future<void> _getMovies() async {
    try {
      final response = await http.get(Uri.https(
        'gateway.marvel.com',
        '/v1/public/characters',
        {
          'ts': '1',
          'apikey': 'b86df477a27903258c5d24ca24818b80',
          'hash': '95c24fed7dce9066302b06758585d6aa',
        },
      ));
      final decodedData = jsonDecode(response.body);
      setState(() {
        _movies = decodedData['data']['results'];
      });
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Contenido mostrado desde una Api rest de marvel',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _movies.length,
              itemBuilder: (_, int index) {
                final movie = _movies[index];
                return Container(
                  width: 134,
                  height: 200,
                  color: const Color.fromARGB(255, 227, 9, 9),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Image.network(
                        '${movie['thumbnail']['path']}.${movie['thumbnail']['extension']}',
                        fit: BoxFit.cover,
                        width: 134,
                        height: 150,
                      ),
                      Text(
                        movie['name'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 67, 51, 2),
                          fontSize: 12,
                        ),
                      ),
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
