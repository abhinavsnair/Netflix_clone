import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constats.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widgets.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final List imagelist = [
    'https://i.pinimg.com/564x/07/aa/75/07aa7580d9ce8dca0db8d2f3d7c35eec.jpg',
    'https://i.pinimg.com/564x/40/62/10/406210d953aa70a3c90cc058f40fdd03.jpg',
    'https://i.pinimg.com/564x/9d/a9/39/9da9399617804fd5a4a8bd1c755762d3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
        body: ListView(
          children: [
            Row(
              children: const [
                kwidth,
                Icon(
                  Icons.settings,
                  color: kwhite,
                ),
                Text("Smart Download")
              ],
            ),
            const Text('Introducing Downloads for you'),
            const Text(
                'We will Download a personalized selection of movies and shows for you, there is always something to watch on your device'),
            Container(
              height: size.width,
              width: size.width,
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: size.width * 0.40,
                    ),
                  ),
                  Downloadsimagewidgets(
                    imagelist: imagelist[0],
                    margin: EdgeInsets.only(left: 130, bottom: 55),
                    angle: 20,
                    size: Size(size.width * 0.45, size.width * 0.58),
                  ),
                  Downloadsimagewidgets(
                    imagelist: imagelist[1],
                    margin: EdgeInsets.only(right: 130, bottom: 55),
                    angle: -20,
                    size: Size(size.width * 0.45, size.width * 0.58),
                  ),
                  Downloadsimagewidgets(
                    imagelist: imagelist[2],
                    margin: EdgeInsets.only(left: 0, bottom: 20),
                    size: Size(size.width * 0.45, size.width * 0.65),
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: kButtonColorBlue,
              child: const Text(
                'Set Up',
                style: TextStyle(
                    color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: kwhite,
              child: const Text(
                'See what you can dowload',
                style: TextStyle(
                    color: kblack, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}

class Downloadsimagewidgets extends StatelessWidget {
  const Downloadsimagewidgets(
      {Key? key,
      required this.imagelist,
      this.angle = 0,
      required this.margin,
      required this.size})
      : super(key: key);

  final String imagelist;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kblack,
            image: DecorationImage(image: NetworkImage(imagelist),
            fit: BoxFit.cover
            )),
      ),
    );
  }
}
