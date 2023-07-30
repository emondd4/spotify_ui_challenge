import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'model/searchModel.dart';

class SpotifySearchPage extends StatefulWidget {
  const SpotifySearchPage({super.key});

  @override
  State<SpotifySearchPage> createState() => _SpotifySearchPageState();
}

class _SpotifySearchPageState extends State<SpotifySearchPage> {

  List<SearchModel> searchModel = [
    SearchModel("Live Events", Colors.deepPurpleAccent, "assets/live_event.jpg"),
    SearchModel("Made For You", Colors.lightBlue, "assets/made_for_you.jpg"),
    SearchModel("New Release", Colors.redAccent, "assets/new_release.jpg"),
    SearchModel("South Asian", Colors.orangeAccent, "assets/south_asia.jpg"),
    SearchModel("Pop", Colors.green, "assets/pop.jpg"),
    SearchModel("Hip-Hop", Colors.orange, "assets/hip_hop.jpg"),
    SearchModel("Rock", Colors.red, "assets/rock.jpg"),
    SearchModel("Charts", Colors.purple, "assets/charts.jpg"),
    SearchModel("Latin", Colors.pink, "assets/latin.jpg"),
    SearchModel("Electronic\nDance", Colors.blueGrey, "assets/edm.jpg"),
    SearchModel("Live Events", Colors.deepPurpleAccent, "assets/live_event.jpg"),
    SearchModel("Made For You", Colors.lightBlue, "assets/made_for_you.jpg"),
    SearchModel("New Release", Colors.redAccent, "assets/new_release.jpg"),
    SearchModel("South Asian", Colors.orangeAccent, "assets/south_asia.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Search",
                    style: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0,
                        color: Colors.white)),
                const SizedBox(height: 30.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/search.svg",height: 24.0,width: 24.0,color: Colors.black,),
                              const SizedBox(width: 10.0,),
                              const Text("Artists, songs, or albums",
                                  style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0,
                                      color: Colors.black))
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                    SvgPicture.asset("assets/mic2.svg",height: 32.0,width: 32.0,color: Colors.white,)
                  ],
                ),
                const SizedBox(height: 20.0,), 
                const Text("Browse all",
                    style: TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0,
                        color: Colors.white)),
                const SizedBox(height: 20.0,),
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 15.0,
                      childAspectRatio: 1.7
                    ),
                    itemCount: searchModel.length,
                    itemBuilder: (context, index) => listItem(index),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listItem(int index){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: searchModel[index].color,
      ),
      child: Stack(
        children: [
          Positioned(top: 5,left: 5,child: Text(searchModel[index].name,
              style: const TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                  color: Colors.white)),),
          Positioned(bottom: -5,right: -15,child: Transform.rotate(angle:30.0 * 3.1416 / 180.0,child: ClipRRect(borderRadius:BorderRadius.circular(10.0),child: Image.asset(searchModel[index].albumArt,height: 76.0,width: 76.0,))),),
        ],
      ),
    );
  }

}
