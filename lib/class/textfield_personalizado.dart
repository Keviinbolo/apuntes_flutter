import 'package:flutter/material.dart';

class TextfieldPersonalizado extends StatelessWidget {
  final String labelname;
  final TextEditingController valorCampo;
  final String hintText;
  const TextfieldPersonalizado({
    super.key, 
    required this.valorCampo,
    this.labelname = "Nombre",
    this.hintText = "Escribe tu nombre",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: valorCampo,
        decoration: InputDecoration(
          label: Text(labelname),
          border: const OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}
