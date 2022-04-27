class Parameters {
  static final Parameters _singleton = new Parameters._internal();

  factory Parameters() {
    return _singleton;
  }

  Parameters._internal();

  String userName, mqttPassword;
  set user(_user) {
    userName = _user;
  }

  String get user {
    return userName;
  }

  set password(_user) {
    mqttPassword = _user;
  }

  String get password {
    return mqttPassword;
  }

  //final domain = 'https://www.orbittas.com/'; //server domain
  final domain =
      'https://tres-astronautas-backend.herokuapp.com/'; //server domain

  final login = 'auth/login'; //endpoints
  final recovery = 'recovery';

  final users = 'users';
  final products = 'owner/my-products';
  final createProducts = 'products';
  final changePassword = 'users';

  final signUp = 'users';

  String get loginUrl {
    return domain + login;
  }

  String get changePaswordUrl {
    return domain + login;
  }

  String get recoveryUrl {
    return domain + recovery;
  }

  String get usersUrl {
    return domain + users;
  }

  String get productsUrl {
    return domain + products;
  }

  String get createProductsUrl {
    return domain + createProducts;
  }

  String get signUpUrl {
    return domain + signUp;
  }
}
