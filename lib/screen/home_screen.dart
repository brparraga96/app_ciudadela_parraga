import 'package:flutter/material.dart';
import 'alicuota_screen.dart';
import 'espacios_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Urbanización Parraga'),
        backgroundColor: const Color.fromARGB(255, 152, 48, 193),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Bienvenido al Sistema de Gestión',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            // Botón para ir a la pantalla de Alícuotas
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              icon: const Icon(Icons.account_balance_wallet),
              label: const Text('Consultar Alícuota Mensual'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AlicuotaScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            // Botón para Espacios Comunes
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              icon: const Icon(Icons.home_work),
              label: const Text('Espacios Comunes'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EspaciosScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
