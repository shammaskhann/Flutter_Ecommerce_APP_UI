import 'package:flutter/material.dart';
import 'package:flutter_assignment/constants/AppFont.dart';

class BlueTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const BlueTextButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        style: AppFont.textbutton,
      ),
    );
  }
}
