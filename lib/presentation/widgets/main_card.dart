import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constats.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 250,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: kborder10,
          image: const DecorationImage(
            fit: BoxFit.cover,
        image: NetworkImage(
          'https://www.themoviedb.org/t/p/w220_and_h330_face/49WJfeN0moxb9IPfGn8AIqMGskD.jpg',
        ),
      )),
    );
  }
}