import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instancia = new UserPreferences._internal();

  factory UserPreferences() {
    return _instancia;
  }

  UserPreferences._internal();

  SharedPreferences prefs;

  initPrefs() async {
    this.prefs = await SharedPreferences.getInstance();
  }

  // GET y SET de la última página
  get ultimaPagina {
    return prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value) {
    prefs.setString('ultimaPagina', value);
  }

  // GET y SET del token
  //
  //
  String get token {
    return prefs.getString('token') ?? '';
  }

  get token1 {
    return prefs.getString('token1') ?? '';
  }

  get token2 {
    return prefs.getString('token2') ?? '';
  }

  get token3 {
    return prefs.getString('token3') ?? '';
  }

  set token(String value) {
    prefs.setString('token', value);
  }

  // GET y SET del nombre
  get name {
    return prefs.getString('nombre') ?? '';
  }

  set name(String value) {
    prefs.setString('nombre', value);
  }

  // GET y SET del email
  get email {
    return prefs.getString('email') ?? '';
  }

  set email(String value) {
    prefs.setString('email', value);
  }

  // GET y SET del userType
  get userType {
    return prefs.getInt('userType') ?? '';
  }

  set userType(int value) {
    prefs.setInt('userType', value);
  }

  // GET y SET del userId
  get userId {
    return prefs.getInt('userId') ?? '';
  }

  set userId(String value) {
    prefs.setString('userId', value);
  }
}
