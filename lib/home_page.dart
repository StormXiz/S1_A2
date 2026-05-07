import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void mostrarMensajeConsola() {
    debugPrint('Botón presionado: información del estudiante mostrada correctamente.');
  }

  void mostrarSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Hola Angel, este es un SnackBar personalizado.'),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil Universitario'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,

        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              debugPrint('Icono de información presionado.');
            },
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const CircleAvatar(
            radius: 55,
            backgroundColor: Colors.deepPurple,
            child: Icon(
              Icons.person,
              size: 70,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 20),

          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                color: Colors.deepPurple,
                width: 1.5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: const [
                  Text(
                    'Nombre completo: Angel',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Número de cédula: 0000000000',
                    style: TextStyle(fontSize: 16),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Carrera: Tecnologías de la Información',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?w=800',
              height: 180,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Esta aplicación muestra información básica del estudiante usando widgets principales de Flutter.',
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: mostrarMensajeConsola,
            child: const Text('Imprimir mensaje en consola'),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        onPressed: () {
          mostrarSnackBar(context);
        },
        child: const Icon(Icons.message),
      ),
    );
  }
}