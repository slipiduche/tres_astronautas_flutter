import 'dart:convert';

import 'dart:io';

import 'package:tres_astronautas_flutter/bloc/error_bloc.dart';
import 'package:tres_astronautas_flutter/providers/parameters.dart';
import 'package:tres_astronautas_flutter/share_prefs/user_preferences.dart';
import 'package:http/http.dart' as http;

import 'package:http/io_client.dart';

class AuthProvider {
  bool _digit(String char) {
    try {
      int digit = int.parse(char);
      print(digit);
      return true;
    } catch (e) {
      return false;
    }
  }

  void naNFinder(String token) {
    int position = token.length - 1;
    int result;
    for (var i = position; i >= 0; i--) {
      if (!_digit(token[i])) {
        result = i;

        break;
      }
    }
    print(result);
    print(token.length);
    if (result != null) {
      _prefs.token = token;
      print(_prefs.token);
      print(token.substring(result - 1, position));
    }
  }

  final _errorBloc = ErrorBloc();

  final _prefs = new UserPreferences();
  Future<Map<String, dynamic>> login(String email, String password) async {
    Map<String, dynamic> decodedResp;

    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      await http.post(Uri.parse(Parameters().loginUrl),
          body: {"email": email, "password": password}).then((response) {
        decodedResp = json.decode(response.body);
      });

      if (decodedResp["access_token"] != null) {
        String _token;

        _token = decodedResp["access_token"];
        print(_token.substring(_token.length - 2, _token.length - 1));
        // naNFinder(_token);
        _prefs.token = _token;

        _prefs.email = email;
        _prefs.name = decodedResp["user"]["name"];
        _prefs.userId = decodedResp["user"]["_id"];
        print(_prefs.token);
        //_prefs.email = decodedResp['user'];

        return {'ok': true, 'token': decodedResp['access_token']};
      } else {
        _errorBloc.errorStreamSink(decodedResp);
        return {'ok': false, 'message': decodedResp['message']};
      }
    } catch (e) {
      print('error:');
      print(e.toString());
      _errorBloc.errorStreamSink(decodedResp);
      return {'ok': false, 'message': e.toString()};
    }
  }

  Future<Map<String, dynamic>> signUp(
      String name, String email, String password) async {
    final request = {
      "email": email,
      "password": password,
      "name": name,
    };

    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      final response =
          await http.post(Uri.parse(Parameters().signUpUrl), body: request);
      print(response.statusCode);
      print(response.body);

      return _result(response);
    } catch (e) {
      print('error:');
      print(e.toString());
      return {'ok': false, 'message': e.toString()};
    }
  }

  Future<Map<String, dynamic>> passwordChange(String newPassword) async {
    final request = {"password": newPassword};
    print(request);

    try {
      final ioc = new HttpClient();
      ioc.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      print('antes');
      final response = await http.post(Uri.parse(Parameters().changePaswordUrl),
          body: request, headers: {"Authorization": "Bearer:" + _prefs.token});
      print('despues');
      print(response.statusCode);
      print(response.body);

      return _result(response);
    } catch (e) {
      print('error:');
      print(e);
      print(e.toString());
      return {'ok': false, 'message': e.toString()};
    }
  }

  Map<String, dynamic> _result(http.Response response) {
    Map<String, dynamic> decodedResp = json.decode(response.body);
    if (decodedResp['message'] == 'user created') {
      _errorBloc.errorStreamSink(decodedResp);
      return {'ok': true, 'message': decodedResp['message']};
    } else {
      _errorBloc.errorStreamSink(decodedResp);
      return {'ok': false, 'message': decodedResp['message']};
    }
  }
}
