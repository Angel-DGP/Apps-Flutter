import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'producto.dart';

class Databasehelper {
  static final Databasehelper _instance = Databasehelper._internal();
  factory Databasehelper() => _instance;
  static Database? _database;
  Databasehelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'products.db');
    await deleteDatabase(path);
    return await openDatabase(
      path,
      version: 2, // Cambia la versión
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE products (id INTEGER PRIMARY KEY, name TEXT, price REAL, description TEXT, mail TEXT)",
        );
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          await db.execute("ALTER TABLE products ADD COLUMN mail TEXT");
        }
      },
    );
  }

  Future<void> insertProduct(Producto product) async {
    final db = await database;
    await db.insert(
      'products',
      product.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print("Producto ingresado: ${product.name}");
  }

  Future<List<Producto>> getProducts() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('products');
    return List.generate(maps.length, (i) {
      return Producto(
        id: maps[i]['id'],
        name: maps[i]['name'],
        price: maps[i]['price'],
        description: maps[i]['description'],
        mail: maps[i]['mail'],
      );
    });
  }

  Future<void> updateProduct(Producto product) async {
    final db = await database;
    await db.update(
      'products',
      product.toMap(),
      where: 'id = ?',
      whereArgs: [product.id],
    );
  }

  Future<void> deleteProduct(int id) async {
    final db = await database;
    await db.delete('products', where: 'id = ?', whereArgs: [id]);
    print("Product delete: $id");
  }
}
