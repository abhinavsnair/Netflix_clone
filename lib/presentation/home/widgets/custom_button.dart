import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String title;
  const CustomButton({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhite,
          size: 25,
        ),
        Text(
          title,
        )
      ],
    );
  }
}
