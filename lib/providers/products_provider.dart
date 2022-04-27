import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tres_astronautas_flutter/bloc/products_bloc.dart';
import 'package:tres_astronautas_flutter/models/products_model.dart';
import 'package:tres_astronautas_flutter/providers/parameters.dart';
import 'package:tres_astronautas_flutter/share_prefs/user_preferences.dart';
import 'package:http/io_client.dart';

final _prefs = new UserPreferences();

class ProductProvider {
  Future<Map<String, dynamic>> getProducts(BuildContext context) async {
    Map<String, dynamic> decodedResp;
    final _resp = jsonEncode({"token": _prefs.token});
    final _resp2 = {"body": _resp};

    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      await http.get(
          Uri.parse(Parameters()
              .productsUrl), //modificado en archivo fuente de la libreria para enviar body
          headers: {
            "Authorization": "Bearer ${_prefs.token}"
          }).then((response) {
        print("Reponse status : ${response.statusCode}");
        print("Response body : ${response.body}");

        if (response.statusCode > 400 && response.statusCode < 500) {
          print(decodedResp);
          Navigator.of(context).pushReplacementNamed('loginPage');
          return {'ok': false, 'message': 'Token expired'};
        }

        ProductsBloc().setProducts = productFromJson(response.body);
      });
      return {'ok': true, 'message': 'success'};
    } catch (e) {
      print('error:');
      print(e.toString());

      return {'ok': false, 'message': e.toString()};
    }
  }

  Future<Map<String, dynamic>> createProduct(
      BuildContext context, int productPrice, String productName) async {
    Map<String, dynamic> decodedResp;

    final request = {"name": productName, "price": productPrice};

    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      print('posting');

      await http.post(
          Uri.parse(Parameters()
              .createProductsUrl), //modificado en archivo fuente de la libreria para enviar body
          body: jsonEncode(request),
          headers: {
            "Authorization": "Bearer ${_prefs.token}",
            'Content-Type': 'application/json'
          }).then((response) {
        print("Reponse status : ${response.statusCode}");
        print("Response body : ${response.body}");

        if (response.statusCode > 400 && response.statusCode < 500) {
          print(decodedResp);
          Navigator.of(context).pushReplacementNamed('loginPage');
          return {'ok': false, 'message': 'Token expired'};
        }
      });
      return {'ok': true, 'message': 'success'};
    } catch (e) {
      print('error:');
      print(e.toString());

      return {'ok': false, 'message': e.toString()};
    }
  }

  Future<Map<String, dynamic>> updateProduct(BuildContext context, String id,
      int productPrice, String productName) async {
    Map<String, dynamic> decodedResp;

    final request = {"name": productName, "price": productPrice};

    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      print('posting');
      print(id);
      await http.put(
          Uri.parse(Parameters().createProductsUrl +
              '/' +
              id), //modificado en archivo fuente de la libreria para enviar body
          body: jsonEncode(request),
          headers: {
            "Authorization": "Bearer ${_prefs.token}",
            'Content-Type': 'application/json'
          }).then((response) {
        print("Reponse status : ${response.statusCode}");
        print("Response body : ${response.body}");

        if (response.statusCode > 400 && response.statusCode < 500) {
          print(decodedResp);
          Navigator.of(context).pushReplacementNamed('loginPage');
          return {'ok': false, 'message': 'Token expired'};
        }
      });
      return {'ok': true, 'message': 'success'};
    } catch (e) {
      print('error:');
      print(e.toString());

      return {'ok': false, 'message': e.toString()};
    }
  }

  Future<Map<String, dynamic>> deleteProduct(
    BuildContext context,
    String id,
  ) async {
    Map<String, dynamic> decodedResp;

    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      print('posting');
      print(id);
      await http.delete(
          Uri.parse(Parameters().createProductsUrl +
              '/' +
              id), //modificado en archivo fuente de la libreria para enviar body
          headers: {
            "Authorization": "Bearer ${_prefs.token}",
            'Content-Type': 'application/json'
          }).then((response) {
        print("Reponse status : ${response.statusCode}");
        print("Response body : ${response.body}");

        if (response.statusCode > 400 && response.statusCode < 500) {
          print(decodedResp);
          Navigator.of(context).pushReplacementNamed('loginPage');
          return {'ok': false, 'message': 'Token expired'};
        }
      });
      return {'ok': true, 'message': 'success'};
    } catch (e) {
      print('error:');
      print(e.toString());

      return {'ok': false, 'message': e.toString()};
    }
  }
}
