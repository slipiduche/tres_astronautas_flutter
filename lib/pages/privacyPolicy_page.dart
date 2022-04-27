import 'package:tres_astronautas_flutter/generated/l10n.dart';
import 'package:tres_astronautas_flutter/styles/margins.dart';

import 'package:tres_astronautas_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

class PrivacyPage extends StatefulWidget {
  @override
  _PrivacyPageState createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.of(context).pop();
      },
      child: SafeArea(
          child: Scaffold(
        appBar: gradientAppBar(TextLanguage.of(context).privacyPolicy, () {
          Navigator.of(context).pop();
        }),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: marginExt, vertical: marginExt),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(TextLanguage.of(context).privacyPolicyText,
                    style: TextStyle(
                        color: blue1,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify)
              ],
            ),
          ),
        ),
      )),
    );
  }
}
