class Producto {
  final int id;
  final String name;
  final double price;
  final String description;
  final String mail;

  Producto({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.mail,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'mail': mail,
    };
  }
}
