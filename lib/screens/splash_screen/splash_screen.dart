import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:quran/screens/home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedSplashScreen(splash:'images/images (2).jpg',splashIconSize: MediaQuery.of(context).size.height,
          nextScreen:HomeScreen(),
      backgroundColor: Colors.white,
      ),
    );
  }
}
