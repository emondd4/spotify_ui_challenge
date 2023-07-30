import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpotifyYourLibraryPage extends StatefulWidget {
  const SpotifyYourLibraryPage({super.key});

  @override
  State<SpotifyYourLibraryPage> createState() => _SpotifyYourLibraryPageState();
}

class _SpotifyYourLibraryPageState extends State<SpotifyYourLibraryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.black,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundImage:AssetImage("assets/IMG_3859.jpg"),
                        ),
                        SizedBox(width: 10.0,),
                        Text("Your Library",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                                color: Colors.white)),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/search.svg",height: 28.0,width: 28.0,color: Colors.white,),
                        const SizedBox(width: 20.0,),
                        const Icon(Icons.add,size: 36,color: Colors.white,),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/recent.svg",height: 16.0,width: 16.0,color: Colors.white,),
                        const SizedBox(width: 10.0,),
                        const Text("Most Recent",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 0,
                                color: Colors.white)),
                      ],
                    ),
                    SvgPicture.asset("assets/menu.svg",height: 16.0,width: 16.0,color: Colors.white,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 64.0,
                          width: 64.0,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFB7DACC),
                                Color(0xFF5C00F2),
                              ],
                              begin: Alignment.centerRight,
                              end: Alignment.topLeft,
                              stops: [0.1, 1.0],
                              tileMode: TileMode.clamp,
                            ),
                          ),
                          child: const Center(
                            child: Icon(Icons.favorite,color: Colors.white,),
                          ),
                        ),
                        const SizedBox(width: 15.0,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Liked Songs",
                                style: TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0,
                                    color: Colors.white)),
                            Text("Playlist - 510 songs",
                                style: TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0,
                                    color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                    SvgPicture.asset("assets/pin.svg",height: 24.0,width: 24.0,color: Color(0xff00D75D),)
                  ],
                ),
              ),
              const SizedBox(height: 30.0,),
              const Row(
                children: [
                  SizedBox(width: 25.0,),
                  Icon(Icons.add,size: 36.0,color: Colors.white,),
                  SizedBox(width: 25.0,),
                  Text("Add artists",
                      style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                          color: Colors.white)),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
