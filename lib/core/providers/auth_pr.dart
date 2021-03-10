import 'package:aethon_app_1/core/services/auth_s.dart';
import 'package:aethon_app_1/locator.dart';
import 'package:flutter/material.dart';

class AuthModel with ChangeNotifier {
  final AuthService _authService = locator<AuthService>();

  Future<void> login({@required Map<String, dynamic> loginData}) async {
    await _authService.getLoggedInUser(
      loginData: loginData,
    );
  }
}
