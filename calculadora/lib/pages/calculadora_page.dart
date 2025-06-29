import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});
  @override
  State<StatefulWidget> createState() {
    return CalculadoraPageState();
  }
}

class CalculadoraPageState extends State {
  int? valor1 = 0;
  int? valor2 = 0;
  int? resultado = 0;
  String? labelR = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsetsGeometry.directional(top: 30, start: 5),
          child: Text(
            "Calculadora",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: const Color.fromARGB(199, 0, 0, 0),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                onChanged: (value) {
                  valor1 = int.parse(value);
                },
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(),
                controller: TextEditingController(text: "0"),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(vertical: 10),
              child: TextField(
                onChanged: (value) {
                  valor2 = int.parse(value);
                },
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(),
                controller: TextEditingController(text: "0"),
              ),
            ),
            MaterialButton(
              onPressed: () {
                print("$valor1 + $valor2 = $resultado");
                resultado = (valor1! + valor2!);
                labelR = "El resultado de la suma es:";
                setState(() {});
              },
              color: const Color.fromARGB(255, 94, 34, 143),
              padding: EdgeInsets.symmetric(horizontal: 30),
              elevation: 0,
              highlightElevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  15,
                ), // 👈 Redondeo del borde
              ),
              child: const Text(
                "Calcular suma",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text("$labelR $resultado"),
          ],
        ),
      ),
    );
  }
}
