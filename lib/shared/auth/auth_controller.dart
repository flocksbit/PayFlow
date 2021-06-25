import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/shared/models/user_model.dart';

class AuthController {
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      _user = user;
      saveUser(user);
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  Future<void> saveUser(UserModel user) async {
    final instanse = await SharedPreferences.getInstance();
    await instanse.setString('user', user.toJson());
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    final instanse = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 2));
    if (instanse.containsKey('user')) {
      final json = instanse.get('user') as String;
      setUser(context, UserModel.fromJson(json));
      return;
    } else {
      setUser(context, null);
    }
  }
}
