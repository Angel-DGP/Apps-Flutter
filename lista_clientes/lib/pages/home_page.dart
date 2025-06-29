import 'package:flutter/material.dart';
import 'package:lista_clientes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.list);
            },
            child: Text(
              "Ir a Página Lista de clientes",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
