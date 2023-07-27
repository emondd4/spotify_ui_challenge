import 'package:flutter/material.dart';
import 'package:spotify_ui_challenge/SpofityPlayScreen.dart';
import 'package:spotify_ui_challenge/SpotifyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify UI Challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedLabelStyle: TextStyle(
              color: Colors.white, fontFamily: 'Gotham', fontSize: 13.0
          ),
          unselectedLabelStyle: TextStyle(
              color: Colors.white38, fontFamily: 'Gotham', fontSize: 12.0
          ),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          showUnselectedLabels: true,
        ),
      ),
      home: const SpotifyHomePage(),
    );
  }
}
