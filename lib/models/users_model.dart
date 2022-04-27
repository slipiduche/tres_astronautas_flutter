// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

class User {
  User({
    this.id,
    this.name,
    this.email,
  });

  int id;
  String name;
  String email;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["mail"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
      };
}
