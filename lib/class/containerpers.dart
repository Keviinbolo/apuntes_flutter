import 'package:flutter/material.dart';

class Containerpers extends StatelessWidget {
  final String Title;
  final Color color;
  final List<String> Informacion;
  const Containerpers({super.key, required this.Title, required this.color, required this.Informacion});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16), 
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2), // Agregar transparencia para mejor legibilidad
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          SizedBox(height: 8),
          // Mapear cada elemento de la lista en lugar de mostrar la lista completa
          ...Informacion.map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              "• $item",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87, // Color oscuro para mejor legibilidad
              ),
            ),
          )).toList(),
        ],
      ),
    );
  }
}