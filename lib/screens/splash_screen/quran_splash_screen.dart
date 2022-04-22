import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quran/screens/quran/quran_screen.dart';
class QuranSplashScreen extends StatefulWidget {
  const QuranSplashScreen({Key? key}) : super(key: key);

  @override
  _QuranSplashScreenState createState() => _QuranSplashScreenState();
}

class _QuranSplashScreenState extends State<QuranSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedSplashScreen(splash:'images/صور-خلفيات-اسلامية-2020-10.jpg',splashIconSize: MediaQuery.of(context).size.height,
        nextScreen:QuranScreen(),
        backgroundColor: Colors.white,

      ),
    );;
  }
}
