import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/main_page/screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white
          ),
            bodyText2: TextStyle(
            color: Colors.white
          ),
         
        )
      ),
      home: ScreenmainPage(),
    );
  }
}
