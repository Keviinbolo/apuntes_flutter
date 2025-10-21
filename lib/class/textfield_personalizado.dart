import 'package:flutter/material.dart';

class TextfieldPersonalizado extends StatelessWidget {
  final TextEditingController valorCampo;
  const TextfieldPersonalizado({super.key, required this.valorCampo});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
            label: Text("Nombre"),
            border: OutlineInputBorder(),
            hintText: "Escribe tu nombre",
          ),
        ),
      ),
    );
  }
}
