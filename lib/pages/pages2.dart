import 'package:apuntes_flutter/class/personalize_button_move_page.dart';
import 'package:apuntes_flutter/pages/botones.dart';
import 'package:apuntes_flutter/pages/cambiodepaginas.dart';
import 'package:apuntes_flutter/pages/columasrowsstacks.dart';
import 'package:apuntes_flutter/pages/funciones.dart';
import 'package:apuntes_flutter/pages/informacionincial.dart';
import 'package:apuntes_flutter/pages/pages1.dart';
import 'package:apuntes_flutter/pages/textfields.dart';
import 'package:apuntes_flutter/pages/widgetspersonalizados.dart';
import 'package:apuntes_flutter/variablesglobals.dart';
import 'package:flutter/material.dart';

class Pages2 extends StatefulWidget {
  final String nombre;

  const Pages2({super.key, this.nombre = "Nombre usuario"});

  @override
  State<Pages2> createState() => _Pages2State();
}

class _Pages2State extends State<Pages2> {
  String nombre = "";
  
  // Lista de botones con su información
  final List<Map<String, dynamic>> botones = [
    {
      'nombre': 'Informacion Inicial',
      'pagina': Informacioninicial(),
    },
    {
      'nombre': 'Rows, Columns y Stacks',
      'pagina': Columasrowsstacks(),
    },
    {
      'nombre': 'Botones',
      'pagina': BotonesPage(),
    },
    {
      'nombre': 'Cambio de Pagina',
      'pagina': Cambiodepaginas(),
    },
    {
      'nombre': 'TextFields',
      'pagina': Textfields(),
    },
    {
      'nombre': 'WidgetPersonalizados',
      'pagina': Widgetspersonalizados(),
    },
    {
      'nombre': 'Funciones',
      'pagina': Funciones(),
    },
    {
      'nombre': 'Listas',
      'pagina': null, // Aquí puedes poner la página correspondiente
    },
  ];

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pages1()),
                  );
                },
              ),
              
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Text(
                      "Bienvenido ${widget.nombre}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // GridView con todos los botones
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 2 columnas
                  crossAxisSpacing: 5, // Espacio entre columnas
                  mainAxisSpacing: 15, // Espacio entre filas
                  childAspectRatio: 2.0, // Relación ancho/alto de los items
                ),
                itemCount: botones.length,
                itemBuilder: (context, index) {
                  return PersonalizeButtonMovePage(
                    cambioPagina: () {
                      if (botones[index]['pagina'] != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => botones[index]['pagina'],
                          ),
                        );
                      }
                      // Si la página es null, puedes agregar un SnackBar o diálogo
                      // o simplemente no hacer nada hasta que asignes la página
                    },
                    labelname: botones[index]['nombre'],
                    fontsize: 18, // Un poco más pequeño para que quede mejor en el grid
                    color: Colors.white,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}