import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one_sharp),
          onPressed: () => {print("se presiono el boton")},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: const Drawer(
          surfaceTintColor: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 100, width: 100),
              Text("Opcion 1"),
              Text("Opcion 2"),
            ],
          ),
        ),
        body: const Center(child: Text('Widgets!')),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: const Text("Hola appbar")),
          titleTextStyle: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.orangeAccent[100],
      ),
    );
  }
}
