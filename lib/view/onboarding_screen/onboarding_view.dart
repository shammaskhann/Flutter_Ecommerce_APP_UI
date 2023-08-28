import 'package:flutter/material.dart';
import 'package:flutter_assignment/view/onboarding_screen/AuthOption_view.dart';
import 'package:lottie/lottie.dart';

import '../../Widgets/RoundButton.dart';
import '../../Widgets/TextButton.dart';
import '../../constants/AppFont.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Lottie.asset(
            "assets/animations/onboard_animation.json",
            height: 300,
            width: 300,
          ),
          // child: Lottie.network(
          //   "https://lottie.host/c18c2667-71b3-47c0-b7e2-e376a6ebb45c/UerW5zq9hE.json",
          // ),
        ),
        Text(
          "Find 1000+ Offers at \n One Place",
          style: AppFont.heading1,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 14,
        ),
        Text('From ordering to paying, that’s all contactless',
            style: AppFont.subtitle1),
        RoundButton(
          title: "Get Started",
          loading: false,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AuthOptionScreen()));
          },
        ),
        BlueTextButton(
          title: 'Are you a Business?',
          onTap: () {},
        ),
      ],
    )));
  }
}
