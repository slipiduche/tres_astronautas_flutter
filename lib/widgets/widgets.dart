import 'package:flutter/material.dart';

import '../styles/colors.dart';
import 'package:tres_astronautas_flutter/styles/fontSizes.dart';

PreferredSizeWidget gradientAppBar(String title, Function onBackPressed) {
  return PreferredSize(
    preferredSize: Size.fromHeight(50.0),
    child: Container(
      height: 50.0,
      width: double.infinity,
      decoration:
          BoxDecoration(gradient: blueGradient1, boxShadow: [boxShadow1]),
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: titleBarSize,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
        IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: blue,
            ),
            onPressed: onBackPressed),
      ]),
    ),
  );
}

PreferredSizeWidget gradientAppBar2(
    String title, Widget icon, Function onBackPressed) {
  return PreferredSize(
    preferredSize: Size.fromHeight(50.0),
    child: Container(
      height: 50.0,
      width: double.infinity,
      decoration:
          BoxDecoration(gradient: blueGradient1, boxShadow: [boxShadow1]),
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon,
                      SizedBox(width: 10.0),
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: correoSize,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: blue,
            ),
            onPressed: onBackPressed),
      ]),
    ),
  );
}

PreferredSizeWidget gradientAppBar3(
    String title, Widget icon, Function onBackPressed) {
  return PreferredSize(
    preferredSize: Size.fromHeight(50.0),
    child: Container(
      height: 50.0,
      width: double.infinity,
      decoration:
          BoxDecoration(gradient: blueGradient1, boxShadow: [boxShadow1]),
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon,
                      SizedBox(width: 10.0),
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: correoSize,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ]),
    ),
  );
}

Widget statusIcon(double size, int status) {
  LinearGradient _gradiente;
  if (status == 1) {
    _gradiente = blueGradient1;
    print('status1');
  } else if (status == 0) {
    _gradiente = grayGradient;
    print('estatus0:$status');
  } else if (status == 2) {
    _gradiente = greenGradient;
    print('estatus3:$status');
  } else {
    _gradiente = redGradient;
    print('estatus3:$status');
  }
  return Container(
    height: size,
    width: size,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0), gradient: _gradiente),
  );
}

Widget circularProgressCustom() {
  return Container(
    height: 50.0,
    width: 50.0,
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(blue1),
    ),
  );
}
