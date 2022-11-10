import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/downloads/screens_downloads.dart';
import 'package:netflix_clone/presentation/fast_laugh/fast_laugh.dart';
import 'package:netflix_clone/presentation/home/screen_home.dart';
import 'package:netflix_clone/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_clone/presentation/new_and_hot/new_and_hot.dart';
import 'package:netflix_clone/presentation/search/search_screen.dart';

class ScreenmainPage extends StatelessWidget {
  ScreenmainPage({super.key});

  final _pages = [
    const ScreenHome(),
    const ScreennewAndHot(),
    const ScreenFastLaugh(),
    const ScreeanSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
        bottomNavigationBar: const Bottomnav());
  }
}
