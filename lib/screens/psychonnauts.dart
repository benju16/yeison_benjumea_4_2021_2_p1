// ignore_for_file: file_names

import 'package:yeison_benjumea_4_2021_2_p1/screens/characters.dart';
import 'package:flutter/material.dart';
import 'characters.dart' as Characters;

class PsychonNauts extends StatefulWidget {
  const PsychonNauts({ Key? key }) : super(key: key);

  @override
  _PsychonNautsState createState() => _PsychonNautsState();
}

class _PsychonNautsState extends State<PsychonNauts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            _showTitle(),
            _showlogo(),
            Container(
              padding: const EdgeInsets.all(30),
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return Characters.Characters();
                  }));
                },
                label: const Text(
                  "Inicio",
                  style: TextStyle(color: Colors.grey, fontSize: 25),
                ),
                backgroundColor: Colors.indigo,
              ),
            )
          ],
          )),
      
    );
  }

  Widget _showlogo() {
    return const Image(
      image: AssetImage('assets/PsychonNauts_logo1.png'),
      width: 400,
    );
  }

  Widget _showTitle() {
    return Container(
      padding: const EdgeInsets.all(30),
      child: const Text(
        "PsychonNauts",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
      
  }
}