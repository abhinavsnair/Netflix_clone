import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import '../../widgets/custom_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 600,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ydbm5Ad1nyZq7eywWsw82Wxdsgg.jpg'),
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
                const CustomButton(
                  icon: Icons.add,
                  title: 'My List',
                ),
                _TextButton(),
                const CustomButton(
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
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: kblack,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(
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
