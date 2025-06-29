import 'package:flutter/material.dart';
import 'package:list_clients/databaseHelper.dart';
import 'package:list_clients/producto.dart';

class EditProduct extends StatefulWidget {
  final Producto producto;
  const EditProduct({super.key, required this.producto});
  @override
  State<StatefulWidget> createState() {
    return EditProductState();
  }
}

class EditProductState extends State<EditProduct> {
  late TextEditingController nameController;
  late TextEditingController priceController;
  late TextEditingController descriptionController;
  late TextEditingController mailController;
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.producto.name);
    priceController = TextEditingController(
      text: widget.producto.price.toString(),
    );
    descriptionController = TextEditingController(
      text: widget.producto.description,
    );
    mailController = TextEditingController(text: widget.producto.mail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edicion de producto")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: "Price"),
              keyboardType: TextInputType.numberWithOptions(),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: "Description"),
            ),
            TextField(
              controller: mailController,
              decoration: const InputDecoration(labelText: "Correo"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final updateProduct = Producto(
                  id: widget.producto.id,
                  name: nameController.text,
                  price: double.parse(priceController.text),
                  description: descriptionController.text,
                  mail: mailController.text,
                );
                await Databasehelper().updateProduct(updateProduct);
                print("Product updated: ${updateProduct.name}");
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Producto actualizado")),
                );
                Navigator.pop(context, true);
              },
              child: const Text("Update"),
            ),
          ],
        ),
      ),
    );
  }
}
