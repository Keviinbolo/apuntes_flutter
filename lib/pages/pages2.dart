import 'package:apuntes_flutter/class/personalize_button_move_page.dart';
import 'package:apuntes_flutter/pages/columasrowsstacks.dart';
import 'package:apuntes_flutter/pages/informacionincial.dart';
import 'package:apuntes_flutter/pages/pages1.dart';

import 'package:flutter/material.dart';

class Pages2 extends StatefulWidget {
  final String nombre;

  const Pages2({super.key, this.nombre = "Nombre usuario"});

  @override
  State<Pages2> createState() => _Pages2State();
}

class _Pages2State extends State<Pages2> {
  String nombre = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.fork_left),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bienvenido ${widget.nombre}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PersonalizeButtonMovePage(
                cambioPagina: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Informacioninicial(),
                    ),
                  );
                },
                labelname: "Informacion Inicial",
                fontsize: 20,
                color: Colors.white,
              ),
              PersonalizeButtonMovePage(
                cambioPagina: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Columasrowsstacks(),
                    ),
                  );
                },
                labelname: "Rows, Columns y Stacks",
                fontsize: 20,
                color: Colors.white,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text(
                    "Botones",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text(
                    "Cambio de Pagina",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text(
                    "textFields",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text(
                    "WidgetPersonalizados",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text(
                    "Funciones",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text(
                    "Listas",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
