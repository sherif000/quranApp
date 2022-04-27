import 'package:flutter/material.dart';
import 'package:quran/screens/home_screen.dart';
import 'package:quran/screens/prays_times/prays_times_screen.dart';
import 'package:quran/screens/qibla/qibla.dart';
import 'package:quran/screens/quran/quran_screen.dart';
import 'package:quran/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: SplashScreen(),
    );
  }
}
