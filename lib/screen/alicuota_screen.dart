import 'package:flutter/material.dart';

class AlicuotaScreen extends StatelessWidget {
  const AlicuotaScreen({super.key});

  // Manejo de datos estáticos: lista declarada en Dart
  final List<Map<String, String>> pagos = const [
    {'mes': 'Enero', 'monto': '\$50.00', 'estado': 'Pagado'},
    {'mes': 'Febrero', 'monto': '\$50.00', 'estado': 'Pagado'},
    {'mes': 'Marzo', 'monto': '\$50.00', 'estado': 'Pagado'},
    {'mes': 'Abril', 'monto': '\$50.00', 'estado': 'Pagado'},
    {'mes': 'Mayo', 'monto': '\$50.00', 'estado': 'Pendiente'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Estado de Alícuota')),
      body: ListView.builder(
        itemCount: pagos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.receipt_long),
            title: Text('Mes: ${pagos[index]['mes']}'),
            subtitle: Text('Monto: ${pagos[index]['monto']}'),
            trailing: Text(
              pagos[index]['estado']!,
              style: TextStyle(
                color: pagos[index]['estado'] == 'Pagado'
                    ? Colors.green
                    : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
