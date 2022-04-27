import 'package:flutter/material.dart';

Widget signUpIcon(size, color) {
  return Image(
    image: AssetImage('assets/signUpIcon.png'),
    //color: color,
    height: size,
  );
}

Widget nameIcon(size) {
  return Image(
    image: AssetImage('assets/nameIcon.png'),
    height: size,
    //color: color,
  );
}

Widget alertsIcon(size, color) {
  return ImageIcon(
    AssetImage('assets/alertsIcon.png'),
    size: size,
    color: color,
  );
}

Widget searchIcon(size, color) {
  return ImageIcon(
    AssetImage('assets/searchIcon.png'),
    size: size,
    color: color,
  );
}

Widget homeIcon(size, color) {
  return ImageIcon(
    AssetImage('assets/homeIcon.png'),
    size: size,
    color: color,
  );
}

Widget logoutIcon(size, color) {
  return ImageIcon(
    AssetImage('assets/logoutIcon.png'),
    size: size,
    color: color,
  );
}

Widget profileIcon(size, color) {
  return ImageIcon(
    AssetImage('assets/profileIconBar.png'),
    size: size,
    color: color,
  );
}

Widget supervisorIcon(size) {
  return Image(
    image: AssetImage('assets/supervisorIcon.png'),
    height: size,
    width: size,
  );
}

Widget waitingIcon(size) {
  return Image(
    image: AssetImage('assets/waitingIcon.png'),
    height: size,
    width: size,
  );
}
