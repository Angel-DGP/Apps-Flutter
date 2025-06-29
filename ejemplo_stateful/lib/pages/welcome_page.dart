import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return WelcomePageState();
  }
}

class WelcomePageState extends State {
  String? nombre = "";
  String? apellido = "";
  String saludo = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Text(
              "Ingrese su nombre",
              style: TextStyle(color: Colors.black),
            ),
            TextField(onChanged: (value) => nombre = value),
            const Text(
              "Ingrese su apellido",
              style: TextStyle(color: Colors.black),
            ),
            TextField(onChanged: (value) => apellido = value),
            MaterialButton(
              onPressed: () {
                saludo = "Bienvenido $nombre $apellido";
                setState(() {});
              },
              color: Colors.amberAccent,
              child: const Text("Saludar"),
            ),
            // ignore: unnecessary_string_interpolations
            Text("$saludo"),
          ],
        ),
      ),
    );
  }
}
