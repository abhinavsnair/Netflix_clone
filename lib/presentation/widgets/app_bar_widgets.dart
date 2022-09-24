import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constats.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          kwidth,
          Text(title,style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.w900),),
          Spacer(),
          Icon(
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
      ),
    );
  }
}
