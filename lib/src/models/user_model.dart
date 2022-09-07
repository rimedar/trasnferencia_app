import 'dart:convert';

import 'package:transferencia_bancaria/src/entities/user.dart';

// Generated by https://quicktype.io

class UserModel extends User {
  UserModel({
    required int nit,
    required String name,
    required int numeroCuenta,
  }) : super(nit: nit, name: name, numeroCuenta: numeroCuenta);

  Map<String, dynamic> toMap() {
    return {
      'nit': nit,
      'name': name,
      'numeroCuenta': numeroCuenta,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      nit: map['nit'] ?? 0,
      name: map['name'] ?? '',
      numeroCuenta: map['numeroCuenta'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}