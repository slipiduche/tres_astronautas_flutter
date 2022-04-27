import 'dart:io';

import 'package:tres_astronautas_flutter/Icons/icons.dart';
import 'package:tres_astronautas_flutter/bloc/alerts_bloc.dart';
import 'package:tres_astronautas_flutter/bloc/authentication_bloc.dart';
import 'package:tres_astronautas_flutter/generated/l10n.dart';
import 'package:tres_astronautas_flutter/styles/margins.dart';
import 'package:tres_astronautas_flutter/widgets/alerts.dart';
import 'package:tres_astronautas_flutter/widgets/login_widgets.dart';
import 'package:tres_astronautas_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthBloc auth = AuthBloc();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    auth.deleteAll();
    AuthBloc().setRoute = 'loginPage';
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        exit(0);
      },
      child: SafeArea(
          child: Scaffold(
        appBar: gradientAppBar(TextLanguage.of(context).loginButtonText, () {
          exit(0);
        }),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: marginSupicon),
                SizedBox(height: 73.0),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: marginExt),
                  child: form(context),
                ),
                SizedBox(height: 20.0),
                StreamBuilder(
                    stream: auth.formValidStream,
                    builder: (context, snapshot) {
                      double _height = 260;
                      double _textSize = 20.0;
                      if (snapshot.hasError) {
                        _height = 200.0;
                      } else {
                        _height = 260.0;
                      }
                      if (MediaQuery.of(context).size.width < 900) {
                        _textSize = 18.0;
                      }
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: marginExt),
                        height: _height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(TextLanguage.of(context).dontHaveAccount,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: _textSize,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, 'signUpPage');
                                  },
                                  child: Text(
                                      ' ' + TextLanguage.of(context).signupHere,
                                      style: TextStyle(
                                          color: blue1,
                                          fontSize: _textSize,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            Expanded(
                                child: SizedBox(
                              width: 50.0,
                            )),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: marginExt),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(TextLanguage.of(context).forgot,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: _textSize,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              'resetPasswordPage');
                                    },
                                    child: Text(
                                        ' ' + TextLanguage.of(context).clicHere,
                                        style: TextStyle(
                                            color: blue1,
                                            fontSize: _textSize,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center),
                                  ),
                                  StreamBuilder(
                                    stream: AlertsBloc().alert,
                                    builder: (BuildContext context,
                                        AsyncSnapshot snapshot) {
                                      WidgetsBinding.instance
                                          .addPostFrameCallback(
                                              (_) => onAfterBuild(context));
                                      return Container();
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 60)
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      )),
    );
  }
}
