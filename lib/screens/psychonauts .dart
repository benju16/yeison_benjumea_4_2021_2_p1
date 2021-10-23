import 'package:flutter/material.dart';

class Psychonauts extends StatefulWidget {
  const Psychonauts({ Key? key }) : super(key: key);

  @override
  _PsychonautsState createState() => _PsychonautsState();
}

class _PsychonautsState extends State<Psychonauts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Psychonauts')
      ),
      
    );
  }
}