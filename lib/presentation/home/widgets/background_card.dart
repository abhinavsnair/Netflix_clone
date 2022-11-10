// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/colors/colors.dart';
import 'custom_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 600,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tVxDe01Zy3kZqaZRNiXFGDICdZk.jpg'),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  icon: Icons.add,
                  title: 'My List',
                ),
                _TextButton(),
                CustomButton(
                  icon: Icons.info_outline_rounded,
                  title: 'Info',
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  TextButton _TextButton() {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.play_arrow,
        size: 25,
        color: kblack,
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Text(
          'play',
          style: TextStyle(
            fontSize: 18,
            color: kblack,
          ),
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          kwhite,
        ),
      ),
    );
  }
}
