import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/home_page.dart';
import 'package:lista_clientes/pages/list_clients_page.dart';
import 'package:lista_clientes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => const HomePage(),
        Routes.list: (context) => ListClientsPage(),
      },
    );
  }
}
