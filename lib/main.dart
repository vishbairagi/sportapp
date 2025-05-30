import 'package:flutter/material.dart';
import 'package:sportapp/screens/Edit.dart';
import 'package:sportapp/screens/info.dart';
import 'package:sportapp/screens/series.dart';
import 'package:sportapp/screens/soccerscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});
    @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SoccerScoreScreen()


      );
  }
}

