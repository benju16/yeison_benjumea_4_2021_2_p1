import 'package:flutter/material.dart';
import 'package:yeison_benjumea_4_2021_2_p1/screens/psychonnauts.dart';





void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PsychonNauts',
      home: PsychonNauts(),
    );
  }
}