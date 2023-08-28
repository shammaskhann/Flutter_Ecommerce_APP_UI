import 'package:flutter/material.dart';
import 'package:flutter_assignment/Widgets/RoundButton.dart';
import 'package:flutter_assignment/constants/AppFont.dart';
import 'package:flutter_assignment/constants/AppImages.dart';
import 'package:flutter_assignment/view/login_screen/login_view.dart';
import 'package:flutter_assignment/view/onboarding_screen/Widgets/TransparentButton.dart';

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
            child: Text("Let’s Get Started 😁", style: AppFont.heading1),
          ),
          Text(
            'Sign up or login into to have a full digital \n experience in our restaurant',
            style: AppFont.subtitle1,
            textAlign: TextAlign.center,
          ),
          RoundButton(
              title: 'Login',
              loading: false,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              }),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(
                  indent: 20.0,
                  endIndent: 10.0,
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              Text(
                "OR",
                style: TextStyle(color: Colors.blueGrey),
              ),
              Expanded(
                child: Divider(
                  indent: 10.0,
                  endIndent: 20.0,
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          TransparentButton(
              title: "Continue with Phone Number",
              preIcon: const Icon(Icons.phone_android),
              onTap: () {}),
          TransparentButton(
              title: "Continue with Gmail",
              preIcon: const Icon(Icons.email),
              onTap: () {}),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          InkWell(
            onTap: () {},
            child: const Text("Sign up later",
                style: TextStyle(
                    color: Color(0xFF8981AE),
                    fontSize: 16,
                    fontFamily: 'Mulish')),
          ),
        ],
      ),
    ));
  }
}
