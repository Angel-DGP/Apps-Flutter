import 'package:flutter/material.dart';
import 'package:list_clients/databaseHelper.dart';
import 'package:list_clients/producto.dart';

class ProductoForm extends StatefulWidget {
  const ProductoForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProductoFormState();
  }
}

class ProductoFormState extends State<ProductoForm> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final priceController = TextEditingController();
    final descriptionController = TextEditingController();
    final mailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Formulario Producto")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Nombre produto"),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: "Precio"),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: "Descripción producto",
              ),
            ),
            TextField(
              controller: mailController,
              decoration: const InputDecoration(
                labelText: "Correo del producto",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final product = Producto(
                  id: DateTime.now().millisecondsSinceEpoch,
                  name: nameController.text,
                  price: double.parse(priceController.text),
                  description: descriptionController.text,
                  mail: mailController.text,
                );
                Databasehelper().insertProduct(product);
                print("Producto ingresado a la base de datos: ${product.name}");
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Producto añadido!")),
                );
                Navigator.pop(context, true);
              },
              child: const Text("GRABAR"),
            ),
          ],
        ),
      ),
    );
  }
}
