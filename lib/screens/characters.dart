import 'package:flutter/material.dart';

class Characters extends StatefulWidget {
  const Characters({ Key? key }) : super(key: key);

  @override
  _CharactersState createState() => _CharactersState();
}

class _CharactersState extends State<Characters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aqui llegamos"),
      ),
    );
  }
}