
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import '../../core/constats.dart';

class ScreennewAndHot extends StatelessWidget {
  const ScreennewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: Text(
              'New & Hot',
              style: GoogleFonts.montserrat(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
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
              kwidth,
            ],
            bottom: TabBar(
              isScrollable: true,
              labelColor: kblack,
              unselectedLabelColor: kwhite,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              indicator: BoxDecoration(color: kwhite, borderRadius: Kborder30),
              tabs: const [
                Tab(
                  text: '🍿 Coming Soon',
                ),
                Tab(
                  text: '👀 Everyone\'s Watching',
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
            children: [_buildComingSoon(context), _buildEveryonesWatching()]),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        kheight,
        Row(
          children: [
            SizedBox(
              width: 50,
              child: Column(
                children: const [
                  Text(
                    'Feb',
                  ),
                  Text(
                    '11',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              width: size.width - 50,
              color: kwhite,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEveryonesWatching() {
    return const SizedBox();
  }
}
