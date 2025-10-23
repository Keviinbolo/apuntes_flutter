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
      body: Column(
        children: [
          Text("Bienvenido $nombre esta es la informacion principal que debes saber para iniciar con flutter"),
          Row(
            children: [
              Column(
                children: [
                  Text("Un widget es una descripcion inmutable de parte de la interfaz de usuario"),
                  Text("En Flutter, casi todo es un widget, desde los elementos de diseño hasta los controles interactivos"),
                ],
              ),
            
            ],
          )
        ],
      ),
    );
  }
}

