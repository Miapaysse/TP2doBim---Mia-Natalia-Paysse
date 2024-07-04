class Empleado {
  final String id;
  final String nombre;
  final String apellido;
  final String area;
  final String? poster;

  Empleado({
    required this.id,
    required this.nombre,
    required this.apellido,
    required this.area,
    this.poster,
  });
}
