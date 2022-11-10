

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

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
                backgroundColor: Colors.black.withOpacity(0.5),
                radius: 25,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off_outlined,
                  ),
                ),
              ),

              //right side

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10,),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://i.pinimg.com/564x/07/aa/75/07aa7580d9ce8dca0db8d2f3d7c35eec.jpg'),
                    ),
                  ),
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
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
