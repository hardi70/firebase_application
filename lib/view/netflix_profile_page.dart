import 'package:firebase_application/view/netflix_home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetflixProfilePage extends StatefulWidget {
  const NetflixProfilePage({Key? key}) : super(key: key);

  @override
  State<NetflixProfilePage> createState() => _NetflixProfilePageState();
}

class _NetflixProfilePageState extends State<NetflixProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/netflix_logo.png",
                      height: 35,
                      width: 130,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  children: const [
                    Spacer(),
                    Text(
                      "Who’s Watching?",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Avenir",
                      ),
                    ),
                    SizedBox(width: 80),
                    Text(
                      "Edit",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Avenir",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 70),
                child: Row(
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) =>
                                      const NetflixHomeScreen(),
                                ));
                          },
                          child: Image.asset(
                            "assets/images/Sol.png",
                            height: 105,
                            width: 105,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Justin",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Raleway",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/Mask_Group_3.png",
                          height: 105,
                          width: 105,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Huntress",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Raleway",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 40),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/Fergus.png",
                          height: 105,
                          width: 105,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Tornado",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Raleway",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/Mask _Group_2.png",
                          height: 105,
                          width: 105,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Dent",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Raleway",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 125, top: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/Kids.png",
                          height: 105,
                          width: 105,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Kids",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Raleway",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
