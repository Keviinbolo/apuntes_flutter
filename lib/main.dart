import 'package:apuntes_flutter/pages/pages1.dart';
import 'package:apuntes_flutter/pages/pages2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pages2(),
    );
  }
}
