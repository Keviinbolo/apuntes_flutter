import 'package:apuntes_flutter/class/personalize_button_move_page.dart';
import 'package:apuntes_flutter/pages/informacionincial.dart';
import 'package:flutter/material.dart';

class Pages2 extends StatefulWidget {
  const Pages2({super.key});

  @override
  State<Pages2> createState() => _Pages2State();
}

class _Pages2State extends State<Pages2> {
  String nombre = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Bienvenido$nombre"),
          Row(
            children: [
              PersonalizeButtonMovePage(
                cambioPagina: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Informacioninicial(),
                    ),
                  );
                },
                labelname: "Informacion Inicial",
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
                    "Columns Y Rows",
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
                  child: Text("Botones", style: TextStyle(color: Colors.white),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text("Cambio de Pagina", style: TextStyle(color: Colors.white),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text("textFields", style: TextStyle(color: Colors.white),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text("WidgetPersonalizados", style: TextStyle(color: Colors.white),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text("Funciones", style: TextStyle(color: Colors.white),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text("Listas", style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}