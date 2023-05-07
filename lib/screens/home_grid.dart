import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class HomeGrid extends StatefulWidget {
  const HomeGrid({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeGridState createState() => _HomeGridState();
}

class _HomeGridState extends State<HomeGrid> {
  List<dynamic> _data = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() async {
    final response = await http.get(Uri.parse('https://apisimpsons.fly.dev/api/personajes'));
    if (response.statusCode == 200) {
      setState(() {
        _data = jsonDecode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _data.isEmpty
        ? const CircularProgressIndicator()
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.network(_data[0]['https://res.cloudinary.com/dglqojivj/image/upload/v1682559694/simpsons/250px-Marge_Simpson_ivadwr.png']),
                    Text(
                      _data[0]['Nombre'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 67, 51, 2), fontSize: 12),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.network(_data[1]['Imagen']),
                    Text(
                      _data[1]['Nombre'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 67, 51, 2), fontSize: 12),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.network(_data[2]['Imagen']),
                    Text(
                      _data[2]['Nombre'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 67, 51, 2), fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
