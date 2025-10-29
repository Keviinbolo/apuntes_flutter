import 'package:apuntes_flutter/class/containerpers.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido $nombre esta es la informacion principal que debes saber para iniciar con flutter",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                            Informacion: Variablesglobals.items[0]["content"], // Cambiado a "content"
                          ),
                          // SEGUNDO CONTAINER
                          Containerpers(
                            Title: Variablesglobals.items[1]["title"], 
                            color: Variablesglobals.items[1]["color"], 
                            Informacion: Variablesglobals.items[1]["content"], // Cambiado a "content"
                          ),  
                          // TERCER CONTAINER
                          Containerpers(
                            Title: Variablesglobals.items[2]["title"], 
                            color: Variablesglobals.items[2]["color"], 
                            Informacion: Variablesglobals.items[2]["content"], // Cambiado a "content"
                          ),
                          // CUARTO CONTAINER
                          Containerpers(
                            Title: Variablesglobals.items[3]["title"], 
                            color: Variablesglobals.items[3]["color"], 
                            Informacion: Variablesglobals.items[3]["content"], // Cambiado a "content"
                          ),
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
    );
  }
}