import 'package:flutter/material.dart';

class SpotifySearchPage extends StatefulWidget {
  const SpotifySearchPage({super.key});

  @override
  State<SpotifySearchPage> createState() => _SpotifySearchPageState();
}

class _SpotifySearchPageState extends State<SpotifySearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.black,
          child: Column(

          ),
        ),
      ),
    );
  }
}
