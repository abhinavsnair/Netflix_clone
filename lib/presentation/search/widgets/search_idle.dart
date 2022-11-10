

import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constats.dart';
import 'package:netflix_clone/presentation/search/widgets/title.dart';

const imageurl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/zymbuoBoL1i94xAOzVJF6IuWLfD.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: 'Top Searches'),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) => const TopSearchItemTile()),
              separatorBuilder: ((context, index) => kheight20),
              itemCount: 10),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: ScreenWidth * 0.35,
          height: 65,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageurl),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
                color: kwhite, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          color: kwhite,
          size: 35,
        )
      ],
    );
  }
}
