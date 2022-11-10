// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constats.dart';
import 'package:netflix_clone/presentation/home/widgets/background_card.dart';
import 'package:netflix_clone/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: scrollnotifier,
            builder: (BuildContext, context, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: ((notification) {
                  final ScrollDirection direction = notification.direction;
                  print(direction);
                  if (direction == ScrollDirection.reverse) {
                    scrollnotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollnotifier.value = true;
                  }
                  return true;
                }),
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        BackgroundCard(),
                        kheight,
                        MainTitleCard(
                          title: 'Release in the past year',
                        ),
                        kheight,
                        MainTitleCard(
                          title: 'Trending now',
                        ),
                        kheight,
                        NumberTitleCard(),
                        kheight,
                        MainTitleCard(
                          title: 'Tense Dramas',
                        ),
                        kheight,
                        MainTitleCard(
                          title: 'South Indian Cinemas',
                        ),
                      ],
                    ),
                    scrollnotifier.value == true
                        ? Container(
                            height: 80,
                            width: double.infinity,
                            color: Colors.amber,
                          )
                        : kheight,
                  ],
                ),
              );
            }),
      ),
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'play',
          style: TextStyle(
            fontSize: 18,
            color: kblack,
          ),
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kwhite),
      ),
    );
  }
}
