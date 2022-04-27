import 'package:tres_astronautas_flutter/bloc/alerts_bloc.dart';
import 'package:tres_astronautas_flutter/bloc/authentication_bloc.dart';
import 'package:tres_astronautas_flutter/generated/l10n.dart';
import 'package:tres_astronautas_flutter/name_icon_icons.dart';
import 'package:tres_astronautas_flutter/providers/auth_provider.dart';
import 'package:tres_astronautas_flutter/styles/margins.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';
import 'package:tres_astronautas_flutter/styles/fontSizes.dart';

import 'login_widgets.dart';

class FormSignup extends StatefulWidget {
  FormSignup({Key key}) : super(key: key);

  @override
  _FormSignupState createState() => _FormSignupState();
}

class _FormSignupState extends State<FormSignup> {
  bool _checkState = false;
  @override
  Widget build(BuildContext context) {
    return _formSignUp(context);
  }

  Widget _formSignUp(BuildContext context) {
    AuthBloc auth = AuthBloc();
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          createName(context),
          SizedBox(
            height: marginBox,
          ),
          createEmail(context),
          SizedBox(
            height: marginBox,
          ),
          createPassword(context),
          SizedBox(
            height: marginBox,
          ),
          Container(
            //Sheight: 110.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        splashRadius: 4.0,
                        activeColor: blue1,
                        value: _checkState,
                        onChanged: (value) {
                          _checkState = value;
                          auth.setCheck = value;
                          setState(() {});
                        }),
                    Text(TextLanguage.of(context).iRead,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: privacyPolicySize,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('privacyPage');
                      },
                      child: Text(' ' + TextLanguage.of(context).privacyPolicy,
                          style: TextStyle(
                              color: blue1,
                              fontSize: privacyPolicySize,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
                SizedBox(
                  height: marginBox - 20,
                ),
              ],
            ),
          ),
          StreamBuilder(
              stream: auth.form2ValidStream,
              builder: (context, snapshot) {
                return GestureDetector(
                    onTap: () {
                      if (snapshot.hasData) _signUp(context);
                    },
                    child: snapshot.hasData
                        ? flatButton(
                            TextLanguage.of(context).signUp, blue, Colors.white)
                        : flatButton(TextLanguage.of(context).signUp, gray2,
                            Colors.white));
              }),

          //Expanded(child: Container()),
        ],
      ),
    );
  }
}

_signUp(BuildContext context) {
  _signUp1(context);
}

_signUp1(BuildContext context) async {
  AlertsBloc().setAlert = Alerts(TextLanguage.of(context).signUp, "Updating");
  print(AuthBloc().nameValue);
  print(AuthBloc().emailValue);
  print(AuthBloc().passwordValue);
  var _signUp = await AuthProvider().signUp(
      AuthBloc().nameValue, AuthBloc().emailValue, AuthBloc().passwordValue);
  if (_signUp["ok"] == true) {
    AlertsBloc().setAlert = Alerts(_signUp["message"], "Updated");
  } else {
    print(_signUp["message"]);
    AlertsBloc().setAlert = Alerts(_signUp["message"], "Error");
  }
}

Widget createName(BuildContext context) {
  AuthBloc auth = AuthBloc();
  return Container(
    //padding: EdgeInsets.only(left: 18.0, right: 18.0),
    child: TextField(
      //autofocus: true,
      //textCapitalization: TextCapitalization.sentences,

      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
        hintText: TextLanguage.of(context).name,
        labelText: TextLanguage.of(context).name,
        suffixIcon: Icon(NameIcon.nameicon),

        //icon: Icon(Icons.email)
      ),
      onChanged: (valor) {
        //setState(() {});
        auth.setName = valor;
      },
    ),
  );
}
