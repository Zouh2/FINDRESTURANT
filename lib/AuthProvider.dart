import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void login() {
    // Perform login action here
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    // Perform logout action here
    _isLoggedIn = false;
    notifyListeners();
  }
}
