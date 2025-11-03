import 'package:flutter/material.dart';
import 'package:apuntes_flutter/class/personalize_button_move_page.dart';
import 'package:apuntes_flutter/class/textfield_personalizado.dart';

class Widgetspersonalizados extends StatefulWidget {
  const Widgetspersonalizados({super.key});

  @override
  State<Widgetspersonalizados> createState() => _WidgetspersonalizadosState();
}

class _WidgetspersonalizadosState extends State<Widgetspersonalizados> {
  TextEditingController ejemploController = TextEditingController();

  @override
  void dispose() {
    ejemploController.dispose();
    super.dispose();
  }

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
                      "Widgets Personalizados",
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
                          "Los widgets personalizados permiten crear componentes reutilizables "
                          "con lógica y diseño específicos. Mejoran la mantenibilidad del código.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    // Ejemplo 1: PersonalizeButtonMovePage
                    Text(
                      "1. Botón Personalizado",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "PersonalizeButtonMovePage - Botón reutilizable para navegación:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),

                    // Ejemplos del botón personalizado
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      alignment: WrapAlignment.center,
                      children: [
                        PersonalizeButtonMovePage(
                          cambioPagina: () {
                            _mostrarMensaje(context, "Botón Azul presionado");
                          },
                          labelname: "Botón Azul",
                          fontsize: 14,
                          color: Colors.blue[300]!,
                        ),
                        PersonalizeButtonMovePage(
                          cambioPagina: () {
                            _mostrarMensaje(context, "Botón Verde presionado");
                          },
                          labelname: "Botón Verde",
                          fontsize: 14,
                          color: Colors.green[300]!,
                        ),
                        PersonalizeButtonMovePage(
                          cambioPagina: () {
                            _mostrarMensaje(context, "Botón Rojo presionado");
                          },
                          labelname: "Botón Rojo",
                          fontsize: 14,
                          color: Colors.red[300]!,
                        ),
                      ],
                    ),

                    SizedBox(height: 30),

                    // Ejemplo 2: TextfieldPersonalizado
                    Text(
                      "2. TextField Personalizado",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "TextfieldPersonalizado - Campo de texto reutilizable:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),

                    TextfieldPersonalizado(
                      valorCampo: ejemploController,
                      labelname: "Ejemplo de campo personalizado",
                      hintText: "Escribe algo aquí...",
                    ),

                    SizedBox(height: 30),

                    // Ventajas de los widgets personalizados
                    Text(
                      "Ventajas de Usar Widgets Personalizados",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),

                    // Container más amplio y bien cuadrado
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 5), // Menos margen para más amplitud
                      child: Card(
                        color: Colors.grey[800],
                        child: Padding(
                          padding: const EdgeInsets.all(24.0), // Más padding interno
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Alineación a la izquierda
                            children: [
                              _ventajaItem("Reutilización", "Usa el mismo widget en múltiples lugares"),
                              SizedBox(height: 16),
                              _ventajaItem("Mantenimiento", "Cambios en un lugar afectan a toda la app"),
                              SizedBox(height: 16),
                              _ventajaItem("Consistencia", "Mismo diseño en toda la aplicación"),
                              SizedBox(height: 16),
                              _ventajaItem("Organización", "Código más limpio y estructurado"),
                              SizedBox(height: 16),
                              _ventajaItem("Productividad", "Desarrollo más rápido y eficiente"),
                            ],
                          ),
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

  Widget _ventajaItem(String titulo, String descripcion) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18, // Texto un poco más grande
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 6),
        Text(
          descripcion,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 15, // Texto un poco más grande
            height: 1.4, // Mejor interlineado
          ),
        ),
      ],
    );
  }

  void _mostrarMensaje(BuildContext context, String mensaje) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensaje),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.green,
      ),
    );
  }
}