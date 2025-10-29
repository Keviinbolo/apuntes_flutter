import 'package:flutter/material.dart';

class Columasrowsstacks extends StatelessWidget {
  const Columasrowsstacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              "Columnas, Rows y Stacks",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // COLUMNA
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Columna",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 16),
                      Container(color: Colors.red, height: 70, width: 70),
                      Container(color: Colors.green, height: 70, width: 70),
                      Container(color: Colors.blue, height: 70, width: 70),
                    ],
                  ),

                  // ROW
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Row",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Container(color: Colors.red, height: 70, width: 70),
                          Container(color: Colors.green, height: 70, width: 70),
                          Container(color: Colors.blue, height: 70, width: 70),
                        ],
                      ),
                    ],
                  ),

                  // STACK
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Stack",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 16),
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
          ],
        ),
      ),
    );
  }
}