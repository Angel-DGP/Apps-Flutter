import 'package:flutter/material.dart';
import 'package:navigation/pages/producto.dart';

class ProductsListPage extends StatelessWidget {
  ProductsListPage({super.key});
  final List<Producto> productos = [
    Producto(
      name: "Manzana",
      price: 0.50,
      description: "Una manzana común y corriente",
    ),
    Producto(
      name: "Pera",
      price: 0.80,
      description: "Una pera común y corriente",
    ),
    Producto(
      name: "Piña",
      price: 1.50,
      description: "Una piña común y corriente",
    ),
    Producto(
      name: "Sandia",
      price: 5.50,
      description: "Una sandia común y corriente",
    ),
    Producto(
      name: "Durazno",
      price: 0.90,
      description: "Un durazno común y corriente",
    ),
    Producto(
      name: "Manzana",
      price: 0.50,
      description: "Una manzana común y corriente",
    ),
    Producto(
      name: "Pera",
      price: 0.80,
      description: "Una pera común y corriente",
    ),
    Producto(
      name: "Piña",
      price: 1.50,
      description: "Una piña común y corriente",
    ),
    Producto(
      name: "Sandia",
      price: 5.50,
      description: "Una sandia común y corriente",
    ),
    Producto(
      name: "Durazno",
      price: 0.90,
      description: "Un durazno común y corriente",
    ),
    Producto(
      name: "Manzana",
      price: 0.50,
      description: "Una manzana común y corriente",
    ),
    Producto(
      name: "Pera",
      price: 0.80,
      description: "Una pera común y corriente",
    ),
    Producto(
      name: "Piña",
      price: 1.50,
      description: "Una piña común y corriente",
    ),
    Producto(
      name: "Sandia",
      price: 5.50,
      description: "Una sandia común y corriente",
    ),
    Producto(
      name: "Durazno",
      price: 0.90,
      description: "Un durazno común y corriente",
    ),
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
        title: Text("Lista de productos"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(productos[index].name),
            subtitle: Text(productos[index].description),
            trailing: Text('\$${productos[index].price.toStringAsFixed(2)}'),
          );
        },
        itemCount: productos.length,
      ),
    );
  }
}
