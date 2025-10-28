import 'package:apuntes_flutter/class/personalize_button_move_page.dart';
import 'package:apuntes_flutter/pages/InformacionInicial.dart';
import 'package:apuntes_flutter/pages/pages1.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Bienvenido $nombre",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2.0,
                children: [
                  PersonalizeButtonMovePage(
                    cambioPagina: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Informacioninicial()),
                      );
                    },
                    labelname: "Informacion Inicial",
                    fontsize: 16,
                    color: Colors.white,
                  ),

                  PersonalizeButtonMovePage(
                    cambioPagina: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Informacioninicial()),
                      );
                    },
                    labelname: "Columns,Rows y Stacks",
                    fontsize: 16,
                    color: Colors.white,
                  ),

                  PersonalizeButtonMovePage(
                    cambioPagina: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Informacioninicial()),
                      );
                    },
                    labelname: "Botones",
                    fontsize: 16,
                    color: Colors.white,
                  ),
            
                  PersonalizeButtonMovePage(
                    cambioPagina: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Informacioninicial()),
                      );
                    },
                    labelname: "Cambio de Pagina",
                    fontsize: 16,
                    color: Colors.white,
                  ),
            
                  PersonalizeButtonMovePage(
                    cambioPagina: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Informacioninicial()),
                      );
                    },
                    labelname: "TextFields",
                    fontsize: 16,
                    color: Colors.white,
                  ),
            
                  PersonalizeButtonMovePage(
                    cambioPagina: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Informacioninicial()),
                      );
                    },
                    labelname: "Funciones",
                    fontsize: 16,
                    color: Colors.white,
                  ),
            
                  PersonalizeButtonMovePage(
                    cambioPagina: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Informacioninicial()),
                      );
                    },
                    labelname: "Listas",
                    fontsize: 16,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}