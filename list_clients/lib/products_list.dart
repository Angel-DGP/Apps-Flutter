import 'package:flutter/material.dart';
import 'package:list_clients/databaseHelper.dart';
import 'package:list_clients/edit_product.dart';
import 'package:list_clients/producto.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ProductsListState();
  }
}

class _ProductsListState extends State<ProductsList> {
  late Future<List<Producto>> _productsList;

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  void _loadProducts() {
    setState(() {
      _productsList = Databasehelper().getProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de productos")),
      body: FutureBuilder<List<Producto>>(
        future: _productsList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text("No existen productos que mostrar"),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final producto = snapshot.data![index];
                return ListTile(
                  title: Text(producto.name),
                  subtitle: Text(
                    "Descripción: ${producto.description} Correo: ${producto.mail}",
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () async {
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  EditProduct(producto: producto),
                            ),
                          );
                          if (result == true) {
                            _loadProducts();
                          }
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () async {
                          await Databasehelper().deleteProduct(producto.id);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Producto eliminado correctamente"),
                            ),
                          );
                          _loadProducts();
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(context, '/add');
          if (result == true) {
            _loadProducts();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
