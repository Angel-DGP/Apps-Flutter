import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

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
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text("Elemento 1"),
            subtitle: Text("Subtitulo de elemento 1"),
            leading: Icon(Icons.accessibility_sharp),
          ),
        ],
      ),
    );
  }
}
