import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../utils/Utils.dart';

class SignupServices {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isPasswordVisible = true;
  bool loading = false;

  void signup(BuildContext context) {
    final _autha = FirebaseAuth.instance;
    _autha
        .createUserWithEmailAndPassword(
            email: emailController.text.toString(),
            password: passwordController.text.toString())
        .then((value) {
      Utils().toastMessage("Sign up successful");
      loading = false;
      Navigator.pop(context);
    }).catchError((e) {
      loading = false;
      Utils().toastMessage(e.toString());
    });
  }
}
