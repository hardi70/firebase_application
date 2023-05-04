import 'dart:convert';

import 'package:firebase_application/data/movies_data.dart';
import 'package:firebase_application/model/movies_data.dart';
import 'package:firebase_application/view/netflix_player_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetflixHomeScreen extends StatefulWidget {
  const NetflixHomeScreen({Key? key}) : super(key: key);

  @override
  State<NetflixHomeScreen> createState() => _NetflixHomeScreenState();
}

class _NetflixHomeScreenState extends State<NetflixHomeScreen> {
  MoviesData? moviesData;
  int currentIndex = 0;

  @override
  void initState() {
    moviesData = moviesDataFromMap(jsonEncode(MovieSperviewsData));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/movie_image.png"),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/netflix_single_logo.png",
                          width: 20,
                          height: 30,
                        ),
                        const Text(
                          "TV Shows",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Avenir"),
                        ),
                        const Text(
                          "Movies",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Avenir"),
                        ),
                        const Text(
                          "My List",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Avenir"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 350, left: 135),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/netflix_single_logo.png",
                          width: 20,
                          height: 30,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          " S E R I E S ",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Avenir"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 375),
                    child: Center(
                      child: Image.asset(
                        "assets/images/movie_logo.png",
                        width: 357,
                        height: 108,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 500),
                    child: Center(
                      child: Text(
                        "Soapy   Exciting   Teen   Action   Drama",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Avenir",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 525),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/pluse.png",
                                width: 18,
                                height: 18,
                              ),
                              const Text(
                                "My List",
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Avenir",
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) =>
                                      const NetflixPlayerScreen(),
                                ),
                              );
                            },
                            child: Container(
                                height: 32,
                                width: 192,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/Polygon.png",
                                        width: 25,
                                        height: 29,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Play",
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Avenir",
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/info.png",
                                width: 18,
                                height: 18,
                              ),
                              const Text(
                                "Info",
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Avenir",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 10),
                child: Text(
                  "Previews",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Avenir",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 170,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 15),
                  itemCount: moviesData!.previewsData!.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Image.asset(
                    moviesData!.previewsData![index].image.toString(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Previews",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Avenir",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 170,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 15),
                  itemCount: moviesData!.moviesData!.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Image.asset(
                    moviesData!.moviesData![index].image.toString(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 40),
                child: Text(
                  "Trending Now",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Avenir",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 170,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 15),
                  itemCount: moviesData!.trendingNowData!.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Image.asset(
                    moviesData!.trendingNowData![index].image.toString(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFF505050),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF121212),
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     CupertinoPageRoute(
              //       builder: (context) => const (),
              //     ),
              //   );
              // },
              child: const ImageIcon(
                size: 25,
                AssetImage("assets/images/home.png"),
              ),
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(
              size: 25,
              AssetImage("assets/images/serch.png"),
            ),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(
              size: 30,
              AssetImage("assets/images/coming_soon.png"),
            ),
            label: 'Coming soon',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/download.png"),
            ),
            label: 'downloads',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/more.png"),
            ),
            label: 'More',
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
