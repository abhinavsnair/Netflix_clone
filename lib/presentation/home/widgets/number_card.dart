import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constats.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 150,
              width: 50,
            ),
            Container(
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
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: 0,
          child: BorderedText(
            strokeWidth: 3,
            strokeColor: Colors.white,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                fontSize: 100,
                color: Colors.black,
                decoration: TextDecoration.none,
                decorationColor: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
