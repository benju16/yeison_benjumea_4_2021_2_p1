import 'package:flutter/material.dart';
import 'package:yeison_benjumea_4_2021_2_p1/helpers/constants.dart';
import 'package:yeison_benjumea_4_2021_2_p1/model/psychonaut.dart';
import 'package:yeison_benjumea_4_2021_2_p1/screens/PsychonNauts.dart';
import 'package:http/http.dart' as http;

class PsychonaustsScren extends StatefulWidget {
  const PsychonaustsScren({ Key? key }) : super(key: key);

  @override
  _PsychonaustsScrenState createState() => _PsychonaustsScrenState();
}

class _PsychonaustsScrenState extends State<PsychonaustsScren> {
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
        title: Text('Pantalla'),
      ),
      body: Text('Texto centrado'),
    );
  }

  void _getPsychonauts() async {

    var url = Uri.parse(Constants.apiUrl);

    var response = await http.get(url, headers: {
      'content-type': 'application/json',
      'accept': 'application/json',
    });

    // var body = response.body;
    // var decodedJson = JsonDecode(body);

    // if (decodedJson != null) {
    //   for (var item in decodedJson) {
    //     _psychonauts.add(Psychonaut.fromJson(item));
    //   }
    // }
    print(response.body);
  }
}