
import 'package:clase18_4/core/data/empleados_datasource.dart';
import 'package:clase18_4/entities/Empleado.dart';
import 'package:clase18_4/presentation/Screens/infoempleados_screen.dart';
import 'package:clase18_4/widgets/empleado_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
static const String name = 'home';
final List<Empleado> empleado = empleadolist;

String userName;
 HomeScreen({super.key , this.userName = ""});
  

  @override
  Widget build(BuildContext context) {

   return Scaffold(
      appBar: AppBar(
        title: const Text('Empleados'),
      ),
      body: const _EmpleadosView(),
    );
    
  }
}

class _EmpleadosView extends StatelessWidget {
  const _EmpleadosView({super.key});

  @override
  Widget build(BuildContext context) {
   return ListView.builder(
       itemCount: empleadolist.length, 
       itemBuilder: (context, index) {
        final empleado = empleadolist[index];
        return EmpleadoItem(
          empleado: empleado,
          onTap:  () => _goToEmpleadoDetails(context, empleado), 
        );
      },
    );


  }
}

void _goToEmpleadoDetails(BuildContext context, Empleado empleado) {
    context.pushNamed(
      InfoempleadosScreen.name,
      pathParameters: {
        'empleadoId': empleado.id,
      },
    );
}