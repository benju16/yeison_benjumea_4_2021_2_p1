import 'package:flutter/material.dart';
import 'package:yeison_benjumea_4_2021_2_p1/screens/psychonauts%20.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Psychonauts',
      home: Psychonauts(),
    );
  }
}