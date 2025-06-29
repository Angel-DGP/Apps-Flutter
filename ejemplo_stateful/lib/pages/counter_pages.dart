import 'package:flutter/material.dart';

class CounterPages extends StatefulWidget {
  const CounterPages({super.key});
  @override
  State<StatefulWidget> createState() {
    return CounterPagesState();
  }
}

class CounterPagesState extends State {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print("$counter");
          setState(() => {});
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(backgroundColor: Colors.blueGrey),
      body: Center(
        child: Text(
          "$counter",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
