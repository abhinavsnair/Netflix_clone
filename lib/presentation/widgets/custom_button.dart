import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constats.dart';
import '../../core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconsize;
  final double textsize;
  final FontWeight weight;
  final Color color;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.title,
    this.iconsize = 25,
    this.textsize = 15,
    this.color = kwhite,
    this.weight = FontWeight.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhite,
          size: iconsize,
        ),
        kheight5,
        Text(
          title,
          style: TextStyle(
            fontSize: textsize,
            fontWeight: weight,
            color: color,
          ),
        )
      ],
    );
  }
}
