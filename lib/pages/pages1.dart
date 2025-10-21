import 'package:apuntes_flutter/class/textfield_personalizado.dart';
import 'package:flutter/material.dart';

class Pages1 extends StatefulWidget {
  const Pages1({super.key});

  @override
  State<Pages1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Pages1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Registro",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    TextfieldPersonalizado(valorCampo: TextEditingController(), hintText: "Introduce tu nombre",),
                    SizedBox(width: 10,),
                    TextfieldPersonalizado(valorCampo: TextEditingController(), labelname: "Correo Electrónico", hintText: "Introduce tu correo electrónico",),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
