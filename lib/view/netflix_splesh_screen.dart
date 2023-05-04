import 'package:firebase_application/view/netflix_login_screen.dart';
import 'package:flutter/material.dart';

class NetflixSpleshScreen extends StatefulWidget {
  const NetflixSpleshScreen({Key? key}) : super(key: key);

  @override
  State<NetflixSpleshScreen> createState() => _NetflixSpleshScreenState();
}

class _NetflixSpleshScreenState extends State<NetflixSpleshScreen> {
  nextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const NetflixLoginScreen(),
        ),
        (route) => false,
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    nextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/netflix_logo.png",
                height: 61,
                width: 222,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
