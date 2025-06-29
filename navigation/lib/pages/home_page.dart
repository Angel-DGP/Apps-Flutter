import 'package:flutter/material.dart';

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
              Navigator.pushNamed(context, '/products');
            },
            child: Text(
              "Ir a Página Productos",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/customers');
            },
            child: Text(
              "Ir a Página Clientes",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/list');
            },
            child: Text(
              "Ir a Página List",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/listProductos');
            },
            child: Text(
              "Ir a Página lista de productos",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
