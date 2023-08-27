import 'package:flutter/material.dart';
import 'package:flutter_assignment/constants/AppColor.dart';
import 'package:flutter_assignment/constants/AppFont.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onTap;
  const RoundButton(
      {super.key,
      required this.title,
      required this.loading,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Container(
              height: 54,
              decoration: BoxDecoration(
                color: AppColor.secondaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                  child: (loading)
                      ? const CircularProgressIndicator(
                          strokeWidth: 3,
                          color: Colors.white,
                        )
                      : Text(title, style: AppFont.buttonStyle)))),
    );
  }
}
