import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_ui_challenge/SpofityPlayScreen.dart';
import 'package:spotify_ui_challenge/util/any_widget_marquee.dart';

class SpotifyDashboardScreen extends StatefulWidget {
  const SpotifyDashboardScreen({super.key});

  @override
  State<SpotifyDashboardScreen> createState() => _SpotifyDashboardScreenState();
}

class _SpotifyDashboardScreenState extends State<SpotifyDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.black,
          child: Stack(
            children: [
              Positioned(top:0,bottom:0,left:0,right:0,child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0,30.0,10.0,10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text("Good evening",
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
                              SvgPicture.asset("assets/notification.svg",height: 28.0,width: 28.0,color: Colors.white,),
                              const SizedBox(width: 20.0,),
                              SvgPicture.asset("assets/clock.svg",height: 28.0,width: 28.0,color: Colors.white,),
                              const SizedBox(width: 20.0,),
                              SvgPicture.asset("assets/settings.svg",height: 28.0,width: 28.0,color: Colors.white,),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0,),
                      Wrap(
                        direction: Axis.horizontal,
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: [
                          _likedSongs(),
                          _normalSongs("assets/la_lecon.jpg","La Lecon Particuliere"),
                          _normalSongs("assets/moments.jpg","Moments"),
                          _normalSongs("assets/yad_oud.jpg","Yad Oud"),
                          _normalSongs("assets/mayerling.jpg","Mayerling"),
                          _normalSongs("assets/sufficient.jpg","Suffice"),
                        ],
                      ),
                      const SizedBox(height: 40.0,),
                      const Text("Popular Radio",
                          style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0,
                              color: Colors.white)),
                      const SizedBox(height: 20.0,),
                      SizedBox(
                          height: 220,
                          child: ListView.builder(itemBuilder: (context,index) => _listItem("assets/album.jpg",0,""), itemCount: 7, scrollDirection: Axis.horizontal,)
                      ),
                      const Text("Recommended Stations",
                          style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0,
                              color: Colors.white)),
                      const SizedBox(height: 20.0,),
                      SizedBox(
                          height: 220,
                          child: ListView.builder(itemBuilder: (context,index) => _listItem("assets/station.jpg",0,""), itemCount: 7, scrollDirection: Axis.horizontal,)
                      ),
                      const Text("Recently Played",
                          style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0,
                              color: Colors.white)),
                      const SizedBox(height: 20.0,),
                      SizedBox(
                          height: 170,
                          child: ListView.builder(itemBuilder: (context,index) => _recentPlay("assets/sufficient.jpg"), itemCount: 7, scrollDirection: Axis.horizontal,)
                      ),
                      const Text("Best of artists",
                          style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0,
                              color: Colors.white)),
                      const SizedBox(height: 20.0,),
                      SizedBox(
                          height: 220,
                          child: ListView.builder(itemBuilder: (context,index) => _listItem("assets/artist.png",1,"The Weekend"), itemCount: 7, scrollDirection: Axis.horizontal,)
                      ),
                      const Text("Best of artists",
                          style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0,
                              color: Colors.white)),
                      const SizedBox(height: 20.0,),
                      SizedBox(
                          height: 220,
                          child: ListView.builder(itemBuilder: (context,index) => _listItem("assets/daily.jpg",0,""), itemCount: 7, scrollDirection: Axis.horizontal,)
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(bottom: 20.0,child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const SpotifyPlayPage()));
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 60.0,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xff484129),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 42.0,
                          width: 42.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: const DecorationImage(image: AssetImage("assets/album_art.jpg")),
                          ),
                        ),
                        const SizedBox(width: 10.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnyMargueeWidget(marginLeft: 10.0, betweenSpacing: 100.0, width: 220.0, height: 20.0, child: const Text("TEYA DORA - DŽANUM",
                                  style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0,
                                      color: Colors.white))),
                              Text("TEYA DORA",
                                  style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0,
                                      color: Colors.white54))
                            ],
                          ),
                        ),
                        const SizedBox(width: 5.0,),
                        SvgPicture.asset("assets/device.svg",height: 28.0,width: 28.0,color: Colors.white,),
                        const SizedBox(width: 15.0,),
                        const Icon(Icons.favorite,color: Color(0xff00d963),size: 28.0,),
                        const SizedBox(width: 10.0,),
                        const Icon(Icons.play_arrow_sharp,size: 32.0,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }

  Widget _likedSongs(){
    return Container(
      width: MediaQuery.sizeOf(context).width / 2.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xff1A1A1A)
      ),
      child: Row(
        children: [
          Container(
            height: 64.0,
            width: 64.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
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
          const SizedBox(width: 10.0,),
          const Text("Liked Songs",
              style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                  color: Colors.white)),
        ],
      ),
    );
  }

  Widget _normalSongs(String imageUrl,String title){
    return Container(
      width: MediaQuery.sizeOf(context).width / 2.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xff1A1A1A)
      ),
      child: Row(
        children: [
          Container(
            height: 64.0,
            width: 64.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
              image: DecorationImage(image: AssetImage(imageUrl)),
            ),
          ),
          const SizedBox(width: 10.0,),
          Expanded(
            child: Text(title,
                style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0,
                    color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _listItem(String image,int flat,String title){
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: SizedBox(
        width: 150.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image,height: 150,width: 150,),
            const SizedBox(height: 10.0,),
            Text(flat == 1 ? title : "Drake, Jay Z, Kendrik Lamer, Travis Scott, 50 Cent, A\$ap Rockey, Joe Cole",
                style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0,
                    color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }

  Widget _recentPlay(String image){
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: SizedBox(
        width: 120.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image,height: 120,width: 120,),
            const SizedBox(height: 10.0,),
            Text("Suffice",
              style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                  color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }

}
