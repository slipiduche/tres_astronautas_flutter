import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    this.id,
    this.name,
    this.price,
    this.owner,
    this.v,
  });

  String id;
  String name;
  int price;
  String owner;
  int v;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["_id"],
        name: json["name"],
        price: json["price"],
        owner: json["owner"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "price": price,
        "owner": owner,
        "__v": v,
      };
}

class NewProduct {
  NewProduct({
    this.name,
    this.price,
  });

  String name;
  int price;
  Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
      };
}
// Generated by https://quicktype.io

ProductCreated productCreatedFromJson(String str) =>
    ProductCreated.fromJson(json.decode(str));

String productCreatedToJson(ProductCreated data) => json.encode(data.toJson());

class ProductCreated {
  ProductCreated({
    this.message,
    this.product,
  });

  String message;
  Product product;

  factory ProductCreated.fromJson(Map<String, dynamic> json) => ProductCreated(
        message: json["message"],
        product: Product.fromJson(json["product"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "product": product.toJson(),
      };
}
