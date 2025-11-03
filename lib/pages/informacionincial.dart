import 'package:apuntes_flutter/class/containerpers.dart';
import 'package:apuntes_flutter/class/personalize_button_move_page.dart';
import 'package:apuntes_flutter/variablesglobals.dart';
import 'package:flutter/material.dart';

class Informacioninicial extends StatefulWidget {
  const Informacioninicial({super.key});

  @override
  State<Informacioninicial> createState() => _InformacioninicialState();
}

class _InformacioninicialState extends State<Informacioninicial> {
  String nombre = "";
  
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
                      "Información Inicial",
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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: Colors.grey[800],
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Bienvenido esta es la informacion principal que debes saber para iniciar con flutter",
                        style: TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                // PRIMER CONTAINER
                                Containerpers(
                                  Title: Variablesglobals.items[0]["title"], 
                                  color: Variablesglobals.items[0]["color"], 
                                  Informacion: Variablesglobals.items[0]["content"],
                                ),
                                SizedBox(height: 15),
                                // SEGUNDO CONTAINER
                                Containerpers(
                                  Title: Variablesglobals.items[1]["title"], 
                                  color: Variablesglobals.items[1]["color"], 
                                  Informacion: Variablesglobals.items[1]["content"],
                                ),  
                                SizedBox(height: 15),
                                // TERCER CONTAINER
                                Containerpers(
                                  Title: Variablesglobals.items[2]["title"], 
                                  color: Variablesglobals.items[2]["color"], 
                                  Informacion: Variablesglobals.items[2]["content"],
                                ),
                                SizedBox(height: 15),
                                // CUARTO CONTAINER
                                Containerpers(
                                  Title: Variablesglobals.items[3]["title"], 
                                  color: Variablesglobals.items[3]["color"], 
                                  Informacion: Variablesglobals.items[3]["content"],
                                ),
                                SizedBox(height: 15),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}