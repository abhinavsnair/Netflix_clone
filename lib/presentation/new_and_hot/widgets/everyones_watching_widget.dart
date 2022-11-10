import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constats.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/video_widget.dart';

class EveryonesWatchingwidget extends StatelessWidget {
  const EveryonesWatchingwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight20,
        const Text(
          'Prey (2022)',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          'When danger threatens her camp, the fierce and highly skilled Comanche warrior Naru sets out to protect her people. But the prey she stalks turns out to be a highly evolved alien predator with a technically advanced arsenal.',
          style: TextStyle(
            color: kgrey,
          ),
        ),
        kheight50,
        const VideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButton(
              icon: Icons.telegram,
              title: 'Share',
              color: kgrey,
              weight: FontWeight.normal,
            ),
            kwidth,
            CustomButton(
              icon: Icons.add,
              title: 'My List',
              color: kgrey,
              weight: FontWeight.normal,
            ),
            kwidth,
            CustomButton(
              icon: Icons.play_arrow,
              title: 'Play',
              color: kgrey,
              weight: FontWeight.normal,
            ),
            kwidth20
          ],
        )
      ],
    );
  }
}