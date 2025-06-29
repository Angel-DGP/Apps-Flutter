import 'package:flutter_test/flutter_test.dart';
import 'package:list_clients/databaseHelper.dart';
import 'package:list_clients/producto.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  late Databasehelper databasehelper;
  setUp(() {
    databasehelper = Databasehelper();
  });
  test('Insert Product', () async {
    var product = Producto(
      id: 1,
      name: "Manzana",
      price: 0.50,
      description: "Una manzana común y corriente",
      mail: 'mail@example.com',
    );
    await databasehelper.insertProduct(product);
    var products = await databasehelper.getProducts();
    for (var product in products) {
      print(
        'ID: ${product.id}, NAME: ${product.name}, PRICE: ${product.price}, DESCRIPTION: ${product.description}, MAIL: ${product.mail}',
      );
    }
  });

  test('Update Product', () async {
    var product = Producto(
      id: 1,
      name: "Manzana update",
      price: 1.50,
      description: "No es una manzana comun y corriente",
      mail: 'mail@update.com',
    );
    await databasehelper.updateProduct(product);
    var products = await databasehelper.getProducts();
    for (var product in products) {
      print(
        'ID: ${product.id}, NAME: ${product.name}, PRICE: ${product.price}, DESCRIPTION: ${product.description}, MAIL: ${product.mail}',
      );
    }
  });
  test('Delete Product', () async {
    await databasehelper.deleteProduct(1);
    var products = await databasehelper.getProducts();
    for (var product in products) {
      print(
        'ID: ${product.id}, NAME: ${product.name}, PRICE: ${product.price}, DESCRIPTION: ${product.description}, MAIL: ${product.mail}',
      );
    }
  });
}
