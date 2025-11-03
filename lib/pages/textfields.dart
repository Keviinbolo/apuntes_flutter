import 'package:flutter/material.dart';
import 'package:apuntes_flutter/class/personalize_button_move_page.dart';
import 'package:apuntes_flutter/class/textfield_personalizado.dart';

class Textfields extends StatefulWidget {
  const Textfields({super.key});

  @override
  State<Textfields> createState() => _TextfieldsState();
}

class _TextfieldsState extends State<Textfields> {
  // Controladores para los TextFields
  TextEditingController nombreController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  // Variable para controlar si mostrar los resultados
  bool mostrarResultados = false;

  @override
  void dispose() {
    // Limpiar los controladores cuando el widget se destruya
    nombreController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Column(
        children: [
          // Header con botón de regreso
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PersonalizeButtonMovePage(
                color: Colors.black,
                labelname: "Atrás",
                cambioPagina: () {
                  Navigator.pop(context);
                },
              ),
              
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                    child: Text(
                      "TextFields en Flutter",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Contenido principal
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Introducción
                    Card(
                      color: Colors.grey[800],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Los TextFields en Flutter permiten a los usuarios ingresar texto. "
                          "Puedes personalizarlos de diversas maneras para adaptarlos a tus necesidades.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    // TextField Personalizado - Nombre
                    Text(
                      "TextField Personalizado",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Campo de texto normal:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 15),
                    TextfieldPersonalizado(
                      valorCampo: nombreController,
                      labelname: "Nombre de usuario",
                      hintText: "Ingresa tu nombre",
                    ),

                    SizedBox(height: 30),

                    // TextField de Contraseña
                    Text(
                      "TextField de Contraseña",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Campo con texto oculto:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Text("Contraseña"),
                          border: const OutlineInputBorder(),
                          hintText: "Ingresa tu contraseña",
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    // Botón para mostrar valores
                    PersonalizeButtonMovePage(
                      cambioPagina: () {
                        setState(() {
                          mostrarResultados = true;
                        });
                      },
                      labelname: "Mostrar Valores",
                      fontsize: 16,
                      color: Colors.blue[300]!,
                    ),

                    SizedBox(height: 20),

                    // Container para mostrar los resultados
                    if (mostrarResultados)
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue[300]!, width: 2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Valores ingresados:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Nombre: ${nombreController.text.isNotEmpty ? nombreController.text : "No ingresado"}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Contraseña: ${passwordController.text.isNotEmpty ? "••••••" : "No ingresada"}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10),
                            // Botón para ocultar los resultados
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    mostrarResultados = false;
                                  });
                                },
                                child: Text(
                                  "Ocultar",
                                  style: TextStyle(
                                    color: Colors.blue[300],
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}