import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              MainTitleCard(
                title: 'Release in the past year',
              ),
              MainTitleCard(
                title: 'Trending now',
              ),
              NumberTitleCard(),
              MainTitleCard(
                title: 'Tense Dramas',
              ),
              MainTitleCard(
                title: 'South Indian Cinemas',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
