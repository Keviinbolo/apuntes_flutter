import 'package:flutter/material.dart';
import 'package:apuntes_flutter/class/personalize_button_move_page.dart';

class Columasrowsstacks extends StatelessWidget {
  const Columasrowsstacks({super.key});

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
                      "Columnas, Rows y Stacks",
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
                children: [
                  Card(
                    color: Colors.grey[800],
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Estos son los principales diseños de disposición en Flutter",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // COLUMNA
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Columna",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 16),
                            Container(color: Colors.red, height: 70, width: 70),
                            SizedBox(height: 5),
                            Container(color: Colors.green, height: 70, width: 70),
                            SizedBox(height: 5),
                            Container(color: Colors.blue, height: 70, width: 70),
                          ],
                        ),

                        // ROW
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Row",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Container(color: Colors.red, height: 70, width: 70),
                                SizedBox(width: 5),
                                Container(color: Colors.green, height: 70, width: 70),
                                SizedBox(width: 5),
                                Container(color: Colors.blue, height: 70, width: 70),
                              ],
                            ),
                          ],
                        ),

                        // STACK
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Stack",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 16),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(color: Colors.red, height: 140, width: 140),
                                Container(color: Colors.green, height: 100, width: 100),
                                Container(color: Colors.blue, height: 60, width: 60),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Explicación adicional
                  Card(
                    color: Colors.grey[800],
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explicación:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "• Columna: Elementos dispuestos verticalmente\n"
                            "• Row: Elementos dispuestos horizontalmente\n"
                            "• Stack: Elementos superpuestos unos sobre otros",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}