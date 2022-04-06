import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/homesections.dart';
import 'package:netflix_clone/modal/details.dart';
import 'package:netflix_clone/section_title.dart';

class Series extends StatefulWidget {
  const Series({Key? key}) : super(key: key);

  @override
  _SeriesState createState() => _SeriesState();
}

class _SeriesState extends State<Series> {
  final Details details = Details();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: const Icon(FontAwesomeIcons.magnifyingGlass),
          title: Image.asset(
            "assets/images/netflix_pic.png",
            height: 55,
            width: 110,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(FontAwesomeIcons.user),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey[300],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.house,
                size: 22,
              ),
              label: "Home",
              // tooltip: "Hello World",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.play_arrow,
                size: 25,
              ),
              label: "Coming Soon",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.arrow_downward,
                size: 25,
              ),
              label: "Download",
            ),
          ],
        ),
        body: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          //width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  // margin: const EdgeInsets.only(left: 10),
                  color: Colors.black,
                  //height: 400,
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height - 380,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/images/peaky-blinders-pic.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 200, left: 10),
                            child: const Text(
                              "Peaky Blinders",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 150,
                            margin: const EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red,
                              border: Border.all(
                                width: 2,
                                color: Colors.red,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 20,
                                  spreadRadius: 3,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  FontAwesomeIcons.circlePlay,
                                  size: 22,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Resume",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SectionTitle(
                  title: "Recently Watched",
                ),
                const SizedBox(
                  height: 10,
                ),
                HomeSections(
                  detail: details.recentlyWatchedData,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SectionTitle(
                  title: "Hollywood Movies",
                ),
                const SizedBox(
                  height: 10,
                ),
                HomeSections(
                  detail: details.hollywoodMoviesData,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
