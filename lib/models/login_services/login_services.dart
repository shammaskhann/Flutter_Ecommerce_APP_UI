import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/utils/Utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_assignment/view/dashboard_screen/dashboard_view.dart';
import '../../view/home_screen/home_view.dart';

class LoginServices {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isPasswordVisible = true;
  bool loading = false;

  void login(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    _auth
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) => {
              Utils().toastMessage("Login Successfull"),
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardScreen()))
            })
        .catchError((er) {
      Utils().toastMessage(er.toString());
      loading = false;
    });
  }
}
