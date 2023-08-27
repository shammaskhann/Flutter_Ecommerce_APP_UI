import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/view/onboarding_screen/onboarding_view.dart';



class SplashServices {
  void isLogin(BuildContext context) {
    // final auth = FirebaseAuth.instance;
    // final user = auth.currentUser;
    // if (user != null) {
    //   Timer(
    //       const Duration(seconds: 3),
    //           () => Navigator.pushReplacement(context,
    //           MaterialPageRoute(builder: (context) => const HomeScreen())));
    // } else {
      Timer(
          const Duration(seconds: 3),
              () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const OnBoardingScreen())));
    //}
  }
}