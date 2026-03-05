import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/pantalla3.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inicia Sesion',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        backgroundColor: Colors.green.shade100,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 20),

              // Correo Electronico
              const Text('Correo electronico', style: TextStyle(fontSize: 16, color: Colors.black)),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),

              // Contraseña
              const Text('Contraseña', style: TextStyle(fontSize: 16, color: Colors.black)),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                ),
                obscureText: true,
              ),
              const SizedBox(height: 24),

              // Boton Inicia Sesion
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 450.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(0.0),
                    border: Border.all(color: Colors.black),
                  ),
                  child: const Center(
                    child: Text(
                      'Inicia sesion',
                      style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Separador
              const Divider(color: Colors.black),
              const SizedBox(height: 10),

              // Registrarse
              const Center(
                child: Text(
                  'Registrarse',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text('Con', style: TextStyle(fontSize: 16, color: Colors.black)),
              ),
              const SizedBox(height: 16),

              // Boton Google
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Pantalla3()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 450.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: BorderRadius.circular(0.0),
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Center(
                      child: Text(
                        'Google',
                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(color: Colors.black),
              const SizedBox(height: 10),

              // Boton Facebook
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 450.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade400,
                    borderRadius: BorderRadius.circular(0.0),
                    border: Border.all(color: Colors.black),
                  ),
                  child: const Center(
                    child: Text(
                      'Facebook',
                      style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Imagen de Leon
              Image.network(
                'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/t.jpg',
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
