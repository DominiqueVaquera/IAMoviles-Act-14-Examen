
import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Imagen de Google
            Align(
              alignment: Alignment.topLeft,
              child: Image.network(
                'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/g.webp',
                height: 40,
              ),
            ),
            const SizedBox(height: 20),

            // Iniciar sesion
            const Center(
              child: Text(
                'Iniciar sesion',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),

            // Correo Electronico
            const Text('Correo electronico:', style: TextStyle(color: Colors.black)),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),

            // Contraseña
            const Text('Contraseña:', style: TextStyle(color: Colors.black)),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                ),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                filled: true,
              ),
              obscureText: true,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),

            // Has olvidado la contraseña
            const Center(
              child: Text('¿Has olvidado la contraseña?'),
            ),
            const SizedBox(height: 24),

            // Boton Enviar
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text('Enviar'),
              ),
            ),
            const SizedBox(height: 20),

            // No tienes cuenta y Crea una
            const Center(
              child: Column(
                children: [
                  Text('¿No tienes cuenta?'),
                  SizedBox(height: 4),
                  Text(
                    'Crea una',
                    style: TextStyle(fontWeight: FontWeight.bold),
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
