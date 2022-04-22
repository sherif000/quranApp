import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:quran/screens/splash_screen/quran_splash_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/pngtree-golden-texture-islamic-ramadan-background-picture-image_1174790.jpg'),
                )
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const QuranSplashScreen()),
                        );
                      },
                      child: AutoSizeText(
                        'القران الكريم',style: TextStyle(fontSize: 20,color: Colors.black),
                      )),
                  SizedBox(
                    height: (10/375.0)*MediaQuery.of(context).size.height,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: (){},
                      child: AutoSizeText(
                        'قبلة الصلاة',style: TextStyle(fontSize: 20,color: Colors.black),
                      )),

                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
