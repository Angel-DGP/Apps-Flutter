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
          onPressed: () => {print("test")},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Inicio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.support),
              label: "Servicios",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: "Acerca de"),
          ],
        ),
        appBar: AppBar(
          shadowColor: Colors.black,
          elevation: 30,
          backgroundColor: Colors.grey,
          title: Center(child: const Text("APP TEST")),
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
        body: Center(child: Text('Hello World!')),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //SizedBox(height: 100, width: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home_filled, color: Colors.blue, size: 40),
                  Text(
                    "Inicio",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_2_sharp, color: Colors.pink, size: 40),
                  Text(
                    "Contacto",
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.support_sharp, color: Colors.purple, size: 40),
                  Text(
                    "Servicios",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings, color: Colors.green, size: 40),
                  Text(
                    "Configuración",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
