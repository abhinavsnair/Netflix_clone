// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
        SearchTitle(title: 'Top Searches'),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) => TopSearchItemTile()),
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageurl),
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
                color: kwhite, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Icon(
          CupertinoIcons.play_circle,
          color: kwhite,
          size: 35,
        )
      ],
    );
  }
}
