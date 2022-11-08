// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchTitle extends StatelessWidget {
  final String title;
  const SearchTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
