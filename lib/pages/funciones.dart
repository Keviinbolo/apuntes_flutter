import 'package:flutter/material.dart';
import 'package:apuntes_flutter/class/personalize_button_move_page.dart';

class Funciones extends StatefulWidget {
  const Funciones({super.key});

  @override
  State<Funciones> createState() => _FuncionesState();
}

class _FuncionesState extends State<Funciones> {
  double _resultado = 0;

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
                      "Funciones en Dart",
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
                          "Las funciones son bloques de código reutilizables que realizan una tarea específica. "
                          "Pueden mostrar mensajes o realizar cálculos.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    // Ejemplo 1: Función con print
                    Text(
                      "1. Función con Print",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Muestra un mensaje en la consola:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "void mostrarMensaje() {\n"
                        "  print('¡Función ejecutada correctamente!');\n"
                        "}",
                        style: TextStyle(
                          color: Colors.green[300],
                          fontSize: 14,
                          fontFamily: 'Monospace',
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    PersonalizeButtonMovePage(
                      cambioPagina: () {
                        _mostrarMensaje();
                      },
                      labelname: "Ejecutar Print",
                      fontsize: 14,
                      color: Colors.blue[300]!,
                    ),

                    SizedBox(height: 30),

                    // Ejemplo 2: Función con suma
                    Text(
                      "2. Función con Suma",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Realiza un cálculo y retorna el resultado:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "double sumar(double a, double b) {\n"
                        "  return a + b;\n"
                        "}",
                        style: TextStyle(
                          color: Colors.green[300],
                          fontSize: 14,
                          fontFamily: 'Monospace',
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    PersonalizeButtonMovePage(
                      cambioPagina: () {
                        _ejecutarSuma();
                      },
                      labelname: "Sumar 8 + 12",
                      fontsize: 14,
                      color: Colors.green[300]!,
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Text(
                        "Resultado: $_resultado",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    // Resumen
                    Card(
                      color: Colors.grey[800],
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "¿Qué aprendimos?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              "• Las funciones organizan el código en bloques reutilizables\n"
                              "• void: Para funciones que no retornan valor\n"
                              "• return: Para funciones que devuelven un resultado\n"
                              "• print(): Muestra mensajes en la consola\n"
                              "• Los parámetros permiten pasar datos a las funciones",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
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

  // FUNCIÓN CON PRINT
  void _mostrarMensaje() {
    print('¡Función ejecutada correctamente!');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Mira la consola para ver el mensaje'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      ),
    );
  }

  // FUNCIÓN CON SUMA
  void _ejecutarSuma() {
    double resultado = _sumar(8, 12);
    setState(() {
      _resultado = resultado;
    });
  }

  double _sumar(double a, double b) {
    return a + b;
  }
}