import 'package:tres_astronautas_flutter/Icons/icons.dart';
import 'package:tres_astronautas_flutter/bloc/alerts_bloc.dart';
import 'package:tres_astronautas_flutter/bloc/authentication_bloc.dart';
import 'package:tres_astronautas_flutter/generated/l10n.dart';
import 'package:tres_astronautas_flutter/share_prefs/user_preferences.dart';
import 'package:tres_astronautas_flutter/styles/fontSizes.dart';
import 'package:tres_astronautas_flutter/styles/margins.dart';
import 'package:tres_astronautas_flutter/widgets/alerts.dart';
import 'package:tres_astronautas_flutter/widgets/changePassword_widgets.dart';

import 'package:tres_astronautas_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../styles/colors.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  AuthBloc auth = AuthBloc();
  final _prefs = new UserPreferences();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    auth.deleteAll();
    AlertsBloc().setAlertClosed = true;
    AuthBloc().setRoute = 'changePasswordPage';
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (_prefs.userType > 1) {
          Navigator.of(context).pushReplacementNamed('managerPage');
        } else {
          Navigator.of(context).pushReplacementNamed('supervisorPage');
        }
      },
      child: SafeArea(
          child: Scaffold(
        appBar: gradientAppBar(TextLanguage.of(context).newPassword, () {
          if (_prefs.userType > 1) {
            Navigator.of(context).pushReplacementNamed('managerPage');
          } else {
            Navigator.of(context).pushReplacementNamed('supervisorPage');
          }
        }),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: marginSupicon),
                SizedBox(height: 73.0),
                Text(_prefs.email,
                    style: TextStyle(
                        color: blue1,
                        fontSize: correoSize,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                SizedBox(height: 30.0),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginExt),
                  child: formChange(context),
                ),
                SizedBox(height: 20.0),
                StreamBuilder(
                  stream: AlertsBloc().alert,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    WidgetsBinding.instance
                        .addPostFrameCallback((_) => onAfterBuild(context));
                    return Container();
                  },
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
