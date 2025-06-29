import 'package:flutter/material.dart';
import 'package:list_clients/producto_form.dart';
import 'package:list_clients/products_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductsList(),
      routes: {'/add': (context) => const ProductoForm()},
    );
  }
}
