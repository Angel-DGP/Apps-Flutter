import 'package:flutter/material.dart';
import 'package:navigation/pages/customers_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/listview_page.dart';
import 'package:navigation/pages/products_list_page.dart';
import 'package:navigation/pages/products_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/products': (context) => const ProductsPage(),
        '/customers': (context) => const CustomersPage(),
        '/list': (context) => const ListviewPage(),
        '/listProductos': (context) => ProductsListPage(),
      },
    );
  }
}
