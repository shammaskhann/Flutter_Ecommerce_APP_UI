import 'package:flutter/material.dart';
import 'package:flutter_assignment/models/splash_services/SplashServices.dart';
import 'package:flutter_assignment/constants/AppColor.dart';
import 'package:flutter_assignment/constants/AppImages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashServices splashservices = SplashServices();
    splashservices.isLogin(context);
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.SplashLogo,
          height: 76,
          width: 76,
        ),
      ),
      backgroundColor: AppColor.backgroundColor,
    );
  }
}
