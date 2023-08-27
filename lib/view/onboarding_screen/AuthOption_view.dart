import 'package:flutter/material.dart';
import 'package:flutter_assignment/Widgets/RoundButton.dart';
import 'package:flutter_assignment/constants/AppFont.dart';
import 'package:flutter_assignment/constants/AppImages.dart';

class AuthOptionScreen extends StatelessWidget {
  const AuthOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Center(
            child: Image.asset(
              AppImages.SplashLogo,
              height: 76,
              width: 76,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 10),
            child: Text("Let's Get Started", style: AppFont.heading1),
          ),
          Text(
            'Sign up or login into to have a full digital \n experience in our restaurant',
            style: AppFont.subtitle1,
            textAlign: TextAlign.center,
          ),
          RoundButton(title: 'Sign in', loading: false, onTap: () {})
        ],
      ),
    ));
  }
}
