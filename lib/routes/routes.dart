import 'package:flutter/material.dart';
import 'package:tres_astronautas_flutter/pages/homePage.dart';
import 'package:tres_astronautas_flutter/pages/privacyPolicy_page.dart';

import 'package:tres_astronautas_flutter/pages/changePassword_page.dart';
import 'package:tres_astronautas_flutter/pages/signUp_page.dart';

import '../pages/login_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    'loadingPage': (BuildContext context) => LoginPage(),
    'signUpPage': (BuildContext context) => SignUpPage(),
    'changePasswordPage': (BuildContext context) => ChangePasswordPage(),
    'privacyPage': (BuildContext context) => PrivacyPage(),
    'homePage': (BuildContext context) => HomePage(),
  };
}
