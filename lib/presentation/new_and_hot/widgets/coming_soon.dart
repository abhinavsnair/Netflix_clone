import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constats.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: 400,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'FEB',
                style: TextStyle(
                  fontSize: 20,
                  color: kgrey,
                ),
              ),
              Text(
                '11',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              kheight,
              Row(
                children: [
                  const Text(
                    'Peaky Blinders',
                    style: TextStyle(
                      letterSpacing: -1.5,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButton(
                        icon: Icons.notifications_none,
                        title: 'Remind Me',
                        iconsize: 20,
                        textsize: 12,
                        weight: FontWeight.normal,
                        color: kgrey,
                      ),
                      kwidth20,
                      CustomButton(
                        icon: Icons.info_outline_rounded,
                        title: 'Info',
                        iconsize: 20,
                        textsize: 12,
                        weight: FontWeight.normal,
                        color: kgrey,
                      ),
                      kwidth,
                    ],
                  )
                ],
              ),
              const Text('Coming on Friday'),
              kheight,
              const Text(
                'Peaky Blinders (2013)',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kheight,
              const Text(
                'A gangster family epic set in 1919 Birmingham, England and centered on a gang who sew razor blades in the peaks of their caps, and their fierce boss Tommy Shelby, who means to move up in the world.',
                style: TextStyle(
                  color: kgrey,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

