import 'package:flutter/material.dart';

class EspaciosScreen extends StatelessWidget {
  const EspaciosScreen({super.key});

  // Datos estáticos para los espacios comunes
  final List<String> espacios = const [
    'Piscinas',
    'Cancha de Fútbol',
    'Gimnasio',
    'Salón de Eventos',
    'Área de BBQ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Espacios Comunes'),
        backgroundColor: const Color.fromARGB(255, 63, 181, 130),
      ),
      body: ListView.builder(
        itemCount: espacios.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.place, color: Colors.indigo),
              title: Text(espacios[index]),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Acción simple al seleccionar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Seleccionaste: ${espacios[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
