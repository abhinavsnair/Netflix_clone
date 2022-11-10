import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constats.dart';
import 'package:netflix_clone/presentation/home/widgets/background_card.dart';
import 'package:netflix_clone/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

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
                      children: const [
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
                        ? AnimatedContainer(
                            duration: const Duration(
                              milliseconds: 2000,
                            ),
                            height: 90,
                            width: double.infinity,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.network(
                                        'https://i.pinimg.com/236x/76/49/b0/7649b0de59f4d7c55b1fb1f998185587.jpg',
                                        height: 30,
                                        width: 50,
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.cast,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                      kwidth,
                                      Container(
                                        color: Colors.blue,
                                        height: 25,
                                        width: 25,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'TV Shows',
                                        style: kMainTitileStyle,
                                      ),
                                      Text(
                                        'Movies',
                                        style: kMainTitileStyle,
                                      ),
                                      Text(
                                        'Categories',
                                        style: kMainTitileStyle,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
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
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: kblack,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
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
