import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginServices {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isPasswordVisible = true;
  bool loading = false;
  final _auth = FirebaseAuth.instance;

  void login() {
    _auth
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) => {})
        .catchError((error) => null);
  }
}
