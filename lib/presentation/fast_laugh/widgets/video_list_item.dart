// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constats.dart';

class VideolistItem extends StatelessWidget {
  final int index;
  const VideolistItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.accents[index % Colors.accents.length],
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //left side

              CircleAvatar(
                radius: 25,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.volume_mute,
                  ),
                ),
              ),

              //right side

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(),
                  VideoActionWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                  VideoActionWidget(icon: Icons.add, title: 'My List'),
                  VideoActionWidget(icon: Icons.share, title: 'Share'),
                  VideoActionWidget(icon: Icons.play_arrow, title: 'Play'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: kwhite,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
