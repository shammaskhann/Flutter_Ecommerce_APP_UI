import 'package:flutter/material.dart';

import '../../../constants/AppFont.dart';

class TransparentButton extends StatelessWidget {
  final String title;
  final Icon preIcon;
  final VoidCallback onTap;
  const TransparentButton(
      {required this.title, required this.preIcon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15, left: 16, right: 16),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 54,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Color(0xFF8E8EA9)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                preIcon,
                const SizedBox(
                  width: 16,
                ),
                Text(title, style: AppFont.subtitle1),
              ],
            ),
          ),
        ));
  }
}
