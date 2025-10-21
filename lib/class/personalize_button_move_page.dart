import 'package:apuntes_flutter/pages/pages1.dart';
import 'package:flutter/material.dart';

class PersonalizeButtonMovePage extends StatelessWidget {
  final String labelname;
  final double fontsize;
  final Color color;
  final Pages1 page = const Pages1();
  const PersonalizeButtonMovePage({
    super.key,
    required this.labelname,
    this.fontsize = 16,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          //Acción del botón
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          labelname,
          style: TextStyle(fontSize: fontsize, color: color),
        ),
      ),
    );
  }
}
