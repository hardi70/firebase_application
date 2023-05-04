import 'package:firebase_application/view/netflix_home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetflixPlayerScreen extends StatefulWidget {
  const NetflixPlayerScreen({Key? key}) : super(key: key);

  @override
  State<NetflixPlayerScreen> createState() => _NetflixPlayerScreenState();
}

class _NetflixPlayerScreenState extends State<NetflixPlayerScreen> {
  int currentIndex = 0;
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
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/bluer_image.png"),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: Image.asset("assets/images/Outer_banks_poster.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 350, left: 310),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const NetflixHomeScreen(),
                            ),
                          );
                        },
                        child: Image.asset("assets/images/cloce_icon.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, top: 220),
                    child: Row(
                      children: [
                        Image.asset("assets/images/top10.png"),
                        const SizedBox(width: 10),
                        const Text(
                          "#5 in TV Shows Today",
                          style: TextStyle(
                            // fontFamily: "InriaSans",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 320),
                    child: Container(
                      height: 31,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xFFD22F26),
                          borderRadius: BorderRadius.circular(3)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/player.png"),
                          const SizedBox(width: 10),
                          const Text(
                            "Play",
                            style: TextStyle(
                                // fontFamily: "InriaSans",
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 440),
                    child: Text(
                      "On an island of haves and have-nots, teen John B enlists his three best friends to hunt a lengendary treasure linked to his father’s disappearance.",
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit Lorem ipsum dolor sit amet, conse",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF808080),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/pluse.png"),
                        const SizedBox(height: 10),
                        const Text(
                          "My List",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF7E7E7E),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 60),
                    Column(
                      children: [
                        Image.asset("assets/images/like.png"),
                        const SizedBox(height: 10),
                        const Text(
                          "Rate",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF7E7E7E),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 60),
                    Column(
                      children: [
                        Image.asset("assets/images/sher.png"),
                        const SizedBox(height: 10),
                        const Text(
                          "Share",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF7E7E7E),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 5,
                          width: 64,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD22F26),
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                        const Text(
                          "EPISODES",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                    const Text(
                      "TRAILERS & MORE",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF808080),
                      ),
                    ),
                    const SizedBox(width: 30),
                    const Text(
                      "MORE LIKE THIS",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF808080),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 25),
                child: Text(
                  "Season 1",
                  style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  children: [
                    Image.asset("assets/images/play_movie.png"),
                    const SizedBox(width: 10),
                    const Text(
                      "1. Pilot",
                      style: TextStyle(
                        fontFamily: "InriaSans",
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 10),
                child: Text(
                  "On an island of haves and have-nots, teen John B enlists his three best friends to hunt a lengendary treasure linked to his father’s disappearance.",
                  style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFF5F5F5),
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
