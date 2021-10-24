import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:connectivity/connectivity.dart';
import 'package:yeison_benjumea_4_2021_2_p1/helpers/constants.dart';
import 'dart:convert';

import 'package:yeison_benjumea_4_2021_2_p1/model/psychonaut.dart';

class Characters extends StatefulWidget {
  const Characters({Key? key}) : super(key: key);

  @override
  _CharactersState createState() => _CharactersState();
}

class _CharactersState extends State<Characters> {
  List<Psychonaut> _psychonauts = [];

  @override
  void initState() {
    super.initState();
    _getPsychonauts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aqui llegamos"),
      ),
      body: _getContent(),
    );
  }

  void _getPsychonauts() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('No hay conexion a internet'),
              content: const Text('Intenta conectarte nuevamente a la red'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Ok'))
              ],
            );
          });

      return;
    }

    var url = Uri.parse(Constants.apiUrl);

    var response = await http.get(url, headers: {
      'content-type': 'application/json',
      'accept': 'application/json',
    });

    var body = response.body;
    var decodedJson = jsonDecode(body);

    if (decodedJson != null) {
      for (var item in decodedJson) {
        _psychonauts.add(Psychonaut.fromJson(item));
      }
    }
  }

  Widget _getContent() {
    return ListView(
      children: _psychonauts.map((e) {
        return InkWell(
          onTap: () {},
          child: Container(
              child: Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.lightBlue),
            child: Column(
              children: [
                Image.network(
                  e.img,
                  width: 200,
                ),
                Text(
                  e.name,
                  style: TextStyle(fontSize: 32),
                )
              ],
            ),
          )),
        );
      }).toList(),
    );
  }
}