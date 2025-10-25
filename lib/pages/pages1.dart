import 'package:apuntes_flutter/class/personalize_button_move_page.dart';
import 'package:apuntes_flutter/class/textfield_personalizado.dart';
import 'package:apuntes_flutter/pages/pages2.dart';
import 'package:flutter/material.dart';

class Pages1 extends StatefulWidget {
  Pages1({super.key});
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
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
                  "REGISTRO",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextfieldPersonalizado(
                        valorCampo: widget.name,
                        hintText: "Introduce tu nombre",
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextfieldPersonalizado(
                        valorCampo: widget.email,
                        labelname: "Correo Electrónico",
                        hintText: "Introduce tu correo electrónico",
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PersonalizeButtonMovePage(
                      cambioPagina: () {
                        if (widget.name.text.isEmpty ||
                            widget.email.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "Por favor, completa todos los campos",
                              ),
                            ),
                          );
                          return;
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Pages2(),
                          ),
                        );
                      },
                      labelname: "Registrarse",
                      fontsize: 20,
                      color: Colors.white,
                    ),
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
