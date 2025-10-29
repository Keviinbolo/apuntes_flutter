import 'package:flutter/material.dart';

class Columasrowsstacks extends StatelessWidget {
  const Columasrowsstacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Columas, Rows y Stacks"),
            Row(
              children: [
                Column(
                  children: [
                    const Text("Columna"),
                    Container(
                      color: Colors.red,
                      height: 50,
                      width: 50,
                    ),
                    Container(
                      color: Colors.green,
                      height: 50,
                      width: 50,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text("Rows"),
                    Row(
                      children: [
                        Container(
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          color: Colors.green,
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          color: Colors.blue,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text("Stack"),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          color: Colors.red,
                          height: 100,
                          width: 100,
                        ),
                        Container(
                          color: Colors.green,
                          height: 70,
                          width: 70,
                        ),
                        Container(
                          color: Colors.blue,
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ],
        )
      ),
    );

  }
}