import 'package:flutter/material.dart';
import 'package:apuntes_flutter/class/personalize_button_move_page.dart';
import 'package:apuntes_flutter/pages/pages2.dart';

class Cambiodepaginas extends StatelessWidget {
  const Cambiodepaginas({super.key});

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
                      "Cambio de Páginas",
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
              padding: const EdgeInsets.all(20.0),
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
                          "En Flutter, la navegación entre páginas se maneja principalmente con Navigator.push. "
                          "Este método abre una nueva página sobre la actual.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    // Navigator.push
                    Text(
                      "Navigator.push",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 20),

                    Card(
                      color: Colors.grey[700],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Text(
                              "Sintaxis:",
                              style: TextStyle(
                                color: Colors.yellow[200],
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.all(12),
                              color: Colors.grey[900],
                              child: Text(
                                "Navigator.push(\n"
                                "  context,\n"
                                "  MaterialPageRoute(\n"
                                "    builder: (context) => NuevaPagina()\n"
                                "  )\n"
                                ");",
                                style: TextStyle(
                                  color: Colors.green[300],
                                  fontSize: 12,
                                  fontFamily: 'Monospace',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    // Ejemplo práctico
                    Text(
                      "Ejemplo Práctico",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 15),
                    Text(
                      "Presiona el botón para cambiar de pagina:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 20),

                    // Botón de ejemplo
                    PersonalizeButtonMovePage(
                      cambioPagina: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pages2()),
                        );
                      },
                      labelname: "Ir a Página de Botones",
                      fontsize: 16,
                      color: Colors.blue[300]!,
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