import 'package:flutter/material.dart';
import 'package:weatherapp_starter_project/pages/MusicPage/MusicPage.dart';
import 'package:weatherapp_starter_project/pages/PlayListPage/PlayListPage.dart';
import 'package:weatherapp_starter_project/pages/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomeScreen(),
        "PlayListPage": (context) => const PlayListPage(),
        "MusicPage": (context) => const MusicPage(),
      },
    );
  }
}
