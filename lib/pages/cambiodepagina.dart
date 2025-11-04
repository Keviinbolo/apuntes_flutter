import 'package:apuntes_flutter/class/personalize_button_move_page.dart';
import 'package:apuntes_flutter/pages/paginadecambio.dart';
import 'package:flutter/material.dart';

class Cambiodepagina extends StatelessWidget {
  const Cambiodepagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
            child: Text('Página de cambio de página'),
          ),
          PersonalizeButtonMovePage(
                cambioPagina: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Paginadecambio(),
                    ),
                  );
                },
                labelname: "Clica aquí para cambiar de página",
                fontsize: 20,
                color: Colors.white,
              ),
        ],
      ),
    );}
}