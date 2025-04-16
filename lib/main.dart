import 'package:flutter/material.dart';
import 'package:leaderboard/screens/leaderboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leaderboard App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF061539),
        fontFamily: 'Roboto',
      ),
      home: const LeaderboardScreen(),
    );
  }
}
