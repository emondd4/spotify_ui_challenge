import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_ui_challenge/SpotifySearchScreen.dart';
import 'package:spotify_ui_challenge/SpotifyYourLibraryScreen.dart';

class SpotifyHomePage extends StatefulWidget {
  const SpotifyHomePage({super.key});

  @override
  State<SpotifyHomePage> createState() => _SpotifyHomePageState();
}

class _SpotifyHomePageState extends State<SpotifyHomePage> {

  int _currentIndex = 0;

  final List<Widget> _pages = [
    Container(color: Colors.red), // Replace this with your desired pages
    const SpotifySearchPage(), // Replace this with your desired pages
    const SpotifyYourLibraryPage() // Replace this with your desired pages
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.black,
          child: Expanded(child: _pages[_currentIndex]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: _currentIndex == 0 ? SvgPicture.asset("assets/home_active.svg",height: 24.0,width: 24.0,color: Colors.white,) : SvgPicture.asset("assets/home_inactive.svg",height: 20.0,width: 20.0,color: Colors.white38,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 1 ? SvgPicture.asset("assets/search.svg",height: 24.0,width: 24.0,color: Colors.white) : SvgPicture.asset("assets/search.svg",height: 20.0,width: 20.0,color: Colors.white38),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 2 ? SvgPicture.asset("assets/library.svg",height: 24.0,width: 24.0,color: Colors.white) : SvgPicture.asset("assets/library.svg",height: 20.0,width: 20.0,color: Colors.white38),
              label: 'Your Library',
            ),
          ],
        ),
      ),
    );
  }
}
