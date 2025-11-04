import 'package:flutter/material.dart';

class Variablesglobals {
  static List items = [
    {
      'title': 'Widgets',
      'content': [
        'Los widgets son los bloques de construcción básicos de una aplicación Flutter.',
        'Todo en Flutter es un widget, desde elementos de interfaz de usuario hasta estructuras de diseño.',
        'Los widgets pueden ser combinados para crear interfaces de usuario complejas.',
      ],
      'color': Colors.blueAccent,
    },
    {
      'title': 'Scaffold',
      'content': [  
        'El widget Scaffold proporciona una estructura básica para la interfaz de usuario de una aplicación Flutter.',
        'Incluye elementos como AppBar, Drawer, BottomNavigationBar, etc.',
        'Facilita la creación de diseños consistentes y adaptativos.',
      ],
      'color': Colors.greenAccent,
    },
    {
      'title': 'Stateful y Stateless Widgets',
      'content': [
        'Los Stateless Widgets son inmutables y no mantienen estado.',
        'Los Stateful Widgets pueden cambiar su estado durante la vida útil del widget.',
        'El estado se maneja mediante la clase State asociada al Stateful Widget.',
      ],
      'color': Colors.orangeAccent,
    },
    {
      'title': 'Widget Personalizado',
      'content': [
        'Puedes crear tus propios widgets personalizados combinando otros widgets.',
        'Los widgets personalizados te permiten reutilizar código y mantener una estructura limpia.',
        'Facilitan la creación de componentes de interfaz de usuario específicos para tu aplicación.',
      ],
      'color': Colors.purpleAccent,
    }

  ];
}