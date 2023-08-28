import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/view/onboarding_screen/onboarding_view.dart';

import '../../utils/Utils.dart';

class LogoutServices {
  final _auth = FirebaseAuth.instance;
  void logout(BuildContext context) {
    _auth.signOut().then((value) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
      Utils().toastMessage("Logout Successful");
    }).catchError((e) {
      Utils().toastMessage(e.toString());
    });
  }
}
