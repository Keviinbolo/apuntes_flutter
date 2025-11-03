import 'package:flutter/material.dart';
import 'package:apuntes_flutter/class/personalize_button_move_page.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Botones en Flutter',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center( // Añadido Center aquí
        child: Container(
          constraints: BoxConstraints(maxWidth: 600), // Ancho máximo para pantallas grandes
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Cambiado a center
              mainAxisAlignment: MainAxisAlignment.center, // Añadido para centrar verticalmente
              children: [
                // Introducción
                Card(
                  color: Colors.grey[800],
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Los botones son elementos fundamentales en cualquier interfaz de usuario. Flutter ofrece varios tipos de botones predefinidos y también permite crear botones personalizados.',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center, // Centrar texto
                    ),
                  ),
                ),

                SizedBox(height: 30),

                // Ejemplo de nuestro botón personalizado
                Text(
                  'Nuestro Botón Personalizado',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center, // Centrar texto
                ),
                SizedBox(height: 10),
                Text(
                  'Este es el botón personalizado que hemos creado y reutilizamos en toda la app:',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center, // Centrar texto
                ),
                SizedBox(height: 20),

                PersonalizeButtonMovePage(
                  cambioPagina: () {
                    _mostrarMensaje(context, '¡Botón personalizado presionado!');
                  },
                  labelname: "Botón Personalizado",
                  fontsize: 18,
                  color: Colors.white,
                ),

                SizedBox(height: 30),

                // Botón personalizado con diferentes estilos
                Text(
                  'Nuestro Botón Personalizado con Diferentes Estilos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center, // Centrar texto
                ),
                SizedBox(height: 15),
                Text(
                  'Presiona cada botón para ver el mensaje:',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center, // Centrar texto
                ),
                SizedBox(height: 15),

                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  alignment: WrapAlignment.center, // Centrar los botones en el Wrap
                  children: [
                    PersonalizeButtonMovePage(
                      cambioPagina: () {
                        _mostrarMensaje(context, 'Botón Rojo');
                      },
                      labelname: "Rojo",
                      fontsize: 16,
                      color: Colors.red,
                    ),
                    PersonalizeButtonMovePage(
                      cambioPagina: () {
                        _mostrarMensaje(context, 'Botón Verde');
                      },
                      labelname: "Verde",
                      fontsize: 16,
                      color: Colors.green,
                    ),
                    PersonalizeButtonMovePage(
                      cambioPagina: () {
                        _mostrarMensaje(context, 'Botón Amarillo');
                      },
                      labelname: "Amarillo",
                      fontsize: 16,
                      color: Colors.yellow,
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // Conclusión
                Card(
                  color: Colors.grey[800],
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center, // Cambiado a center
                      children: [
                        Text(
                          'Resumen:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center, // Centrar texto
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Hemos explorado los botones en Flutter, incluyendo cómo crear y utilizar un botón personalizado. Los botones son esenciales para la interacción del usuario y Flutter facilita su implementación con una variedad de opciones y estilos.',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          textAlign: TextAlign.center, // Centrar texto
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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