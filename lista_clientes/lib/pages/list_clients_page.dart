import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/cliente.dart';

class ListClientsPage extends StatelessWidget {
  ListClientsPage({super.key});
  final List<Cliente> clientes = [
    Cliente(nombreCliente: "Zamira", cedula: "123", tipoDeTiempo: "Completo"),
    Cliente(nombreCliente: "Zamira", cedula: "123", tipoDeTiempo: "Completo"),
    Cliente(nombreCliente: "Zamira", cedula: "123", tipoDeTiempo: "Completo"),
    Cliente(nombreCliente: "Zamira", cedula: "123", tipoDeTiempo: "Completo"),
    Cliente(nombreCliente: "Zamira", cedula: "123", tipoDeTiempo: "Completo"),
    Cliente(nombreCliente: "Zamira", cedula: "123", tipoDeTiempo: "Completo"),
    Cliente(nombreCliente: "Zamira", cedula: "123", tipoDeTiempo: "Completo"),
    Cliente(nombreCliente: "Zamira", cedula: "123", tipoDeTiempo: "Completo"),
    Cliente(nombreCliente: "Zamira", cedula: "123", tipoDeTiempo: "Completo"),
    Cliente(nombreCliente: "Zamira", cedula: "123", tipoDeTiempo: "Completo"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.home_filled),
        ),
        title: Text("Clientes"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(clientes[index].nombreCliente),
            subtitle: Text(clientes[index].cedula),
            trailing: Text(
              'Tipo de tiempo: ${clientes[index].tipoDeTiempo}',
              style: TextStyle(fontSize: 15),
            ),
          );
        },
        itemCount: clientes.length,
      ),
    );
  }
}
