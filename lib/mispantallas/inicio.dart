import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/pantalla2.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Zoologico',
              style: TextStyle(fontSize: 24.0),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pantalla2()),
                );
              },
              child: Image.network(
                'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/j.jfif',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
