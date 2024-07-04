import 'dart:ffi';

import 'package:clase18_4/core/data/empleados_datasource.dart';
import 'package:clase18_4/entities/Empleado.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoempleadosScreen extends StatelessWidget {
static const String name = 'infoempleados';

    late Int empleadoId;

  InfoempleadosScreen({super.key, required String empleadoId});
  

  @override
  Widget build(BuildContext context) {
    final empleado = empleadolist.firstWhere((empleado) => empleado.id == empleadoId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del empleado'),
      ),
      body: _EmpleadoDetailView(empleado: empleado),
    );
  }
}

class _EmpleadoDetailView extends StatelessWidget {
  const _EmpleadoDetailView({
    super.key,
    required this.empleado,
  });

  final Empleado empleado;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (empleado.poster != null) Image.network(empleado.poster!, height: 400),
          const SizedBox(height: 16),
          Text(
            empleado.nombre,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Area de trabajo: ${empleado.area}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          
        ],
      ),
    );
  }
}
