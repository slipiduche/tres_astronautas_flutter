import 'package:tres_astronautas_flutter/models/products_model.dart';
import 'package:rxdart/rxdart.dart';

class ProductsBloc {
  dispose() {
    _productsController?.close();
  }

  static final ProductsBloc _singleton = new ProductsBloc._internal();

  factory ProductsBloc() {
    return _singleton;
  }

  ProductsBloc._internal();
  final _productsController = new BehaviorSubject<List<Product>>();
  Stream<List<Product>> get products => _productsController.stream;
  List<Product> get productsValue => _productsController.value;
  set setProducts(List<Product> event) => _productsController.add(event);

  final _checkController = new BehaviorSubject<int>();
  Stream<int> get check => _checkController.stream;
  int get checkValue => _checkController.value;
  set setCheck(int event) => _checkController.add(event);

  final _productNameController = new BehaviorSubject<String>();
  Stream<String> get productName => _productNameController.stream;
  String get productNameValue => _productNameController.value;
  set setProductName(String event) => _productNameController.add(event);
  final _productPriceController = new BehaviorSubject<int>();
  Stream<int> get productPrice => _productPriceController.stream;
  int get productPriceValue => _productPriceController.value;
  set setProductPrice(int event) => _productPriceController.add(event);
}
