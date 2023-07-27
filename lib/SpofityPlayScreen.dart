import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpotifyPlayPage extends StatefulWidget {
  const SpotifyPlayPage({super.key});

  @override
  State<SpotifyPlayPage> createState() => _SpotifyPlayPageState();
}

class _SpotifyPlayPageState extends State<SpotifyPlayPage> with SingleTickerProviderStateMixin {

  bool favButton = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        "assets/arrow_down.svg",
                        height: 32.0,
                        width: 32.0,
                        color: Colors.white,
                      ),
                      Column(
                        children: [
                          Text("playing from your library".toUpperCase(),
                              style: const TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12.0,
                                  color: Colors.white)),
                          const Text("Liked Songs",
                              style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      SvgPicture.asset(
                        "assets/option.svg",
                        height: 32.0,
                        width: 32.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset("assets/album_art.jpg",height: 312,width: 312,),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Džanum",
                              style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("Teya Dora",
                              style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white)),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            _controller.forward();
                            Future.delayed(const Duration(milliseconds: 200), () {
                              _controller.reverse();
                            });
                            setState(() {
                              favButton = !favButton;
                            });
                          },
                          icon: ScaleTransition(
                            scale: Tween(
                              begin: 1.0,
                              end: 0.7
                            ).animate(_controller),
                            child: Icon( favButton == true ? Icons.favorite :
                              Icons.favorite_border,
                              color: favButton == true ? const Color(0xff00d761) : Colors.white,
                              size: 32,
                            ),
                          ))
                    ],
                  ),
                ),
                SliderTheme(
                    data: const SliderThemeData(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),trackHeight: 1,),
                    child: Slider(
                      value: 0.3,
                      onChanged: (value) {},
                      activeColor: Colors.white,
                      inactiveColor: Colors.white12,
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("0:30",
                          style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 13.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white)),
                      Text("2:54",
                          style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 13.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/shuffle.svg",color: Colors.white,height: 32.0,width: 32.0,),
                      SvgPicture.asset("assets/previous.svg",color: Colors.white,height: 32.0,width: 32.0,),
                      SvgPicture.asset("assets/play.svg",color: Colors.white,height: 64.0,width: 64.0,),
                      SvgPicture.asset("assets/next.svg",color: Colors.white,height: 32.0,width: 32.0,),
                      SvgPicture.asset("assets/repeat.svg",color: Colors.white,height: 32.0,width: 32.0,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Row(
                    children: [
                      Expanded(flex:1,child: Align(alignment:Alignment.centerLeft,child: SvgPicture.asset("assets/device.svg",color: const Color(0xff00d761),height: 24.0,width: 24.0,))),
                      SvgPicture.asset("assets/share.svg",color: Colors.white,height: 24.0,width: 24.0,),
                      const SizedBox(width: 20.0,),
                      SvgPicture.asset("assets/lyrics.svg",color: Colors.white,height: 24.0,width: 24.0,),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0,),
                Padding(padding: const EdgeInsets.all(10.0), child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10.0),
                   color: Colors.white38,
                 ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Lyrics",
                                style: TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(20.0)
                              ),
                              child: Padding(padding: EdgeInsets.fromLTRB(15.0,10.0,15.0,10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Sing".toUpperCase(),
                                        style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    const SizedBox(width: 15.0,),
                                    SvgPicture.asset("assets/mic.svg",color: Colors.white,height: 14.0,width: 14.0,)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10.0,),
                        const Text("Niko neće džanum",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                                color: Colors.black)),
                        const Text("Ni za živu glavu",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 20.0,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const Text("Da mi leči ranu",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 20.0,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const Text("Niko neće džanum",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 20.0,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const Text("Dok tone veče, vraćam isti san",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 20.0,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const Text("Preda mnom svetac drži crni lan",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 20.0,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const Text("U more, sure boje, zove me taj glas",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 20.0,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const Text("Nemam ja sreće, nemam spas, nemam spas",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 20.0,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const SizedBox(height: 10.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                border: Border.all(color: Colors.white,width: 1.0)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20.0,5.0,20.0,5.0),
                                child: Row(
                                  children: [
                                    SvgPicture.asset("assets/share.svg",color: Colors.white,height: 14.0, width: 14.0,),
                                    const SizedBox(width: 10.0,),
                                    Text("Share".toUpperCase(),
                                        style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
