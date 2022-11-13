import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:netflix_clone/application/downloads_bloc/downloads_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constats.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widgets.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [
    const _SmartDownload(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => _widgetList[index],
          separatorBuilder: ((context, index) => const SizedBox(
                height: 25,
              )),
          itemCount: 3),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance!.addPostFrameCallback((_) {
    //   BlocProvider.of<DownloadsBloc>(context)
    //       .add(const DownloadsEvent.getDownloadsImage());
    // });
    BlocProvider.of<DownloadsBloc>(context)
        .add(const DownloadsEvent.getDownloadsImage());
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24, color: kwhite, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "We will Download a personalized selection of\n movies and shows for you, there's\n always something to watch on your\n device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kheight,
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return state.isLoading
                ? const CircularProgressIndicator()
                : SizedBox(
                    height: size.width,
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: size.width * 0.40,
                            backgroundColor: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        Downloadsimagewidgets(
                          imagelist:
                              '$imageAppendUrl${state.downloads[0].posterPath}',
                          margin: const EdgeInsets.only(
                              left: 150, bottom: 55, top: 20),
                          angle: 20,
                          size: Size(size.width * 0.45, size.width * 0.58),
                        ),
                        Downloadsimagewidgets(
                          imagelist:
                              '$imageAppendUrl${state.downloads[1].posterPath}',
                          margin: const EdgeInsets.only(
                              right: 150, bottom: 55, top: 20),
                          angle: -20,
                          size: Size(size.width * 0.45, size.width * 0.58),
                        ),
                        Downloadsimagewidgets(
                          imagelist:
                              '$imageAppendUrl${state.downloads[2].posterPath}',
                          margin: const EdgeInsets.only(
                              left: 0, bottom: 20, top: 25),
                          size: Size(size.width * 0.45, size.width * 0.65),
                        )
                      ],
                    ),
                  );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            color: kButtonColorBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text(
              'Set Up',
              style: TextStyle(
                  color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          onPressed: () {},
          color: kwhite,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can dowload',
              style: TextStyle(
                  color: kblack, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownload extends StatelessWidget {
  const _SmartDownload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth,
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        Text("Smart Download")
      ],
    );
  }
}

class Downloadsimagewidgets extends StatelessWidget {
  const Downloadsimagewidgets(
      {Key? key,
      required this.imagelist,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.borderradius = 10})
      : super(key: key);

  final String imagelist;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double borderradius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderradius),
          color: kblack,
          image: DecorationImage(
              image: NetworkImage(imagelist), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
