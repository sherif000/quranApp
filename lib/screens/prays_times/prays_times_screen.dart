import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:quran/screens/prays_times/prayes_card.dart';
class PraysTimesScreen extends StatefulWidget {
  const PraysTimesScreen({Key? key}) : super(key: key);

  @override
  _PraysTimesScreenState createState() => _PraysTimesScreenState();
}
List <PrayesCard>prayes=[];
class _PraysTimesScreenState extends State<PraysTimesScreen> {
getPrays()async{
  String fajr='',sunrise='',dhuhr='',asr='',maghrib='',isha='';
  String url=' http://api.aladhan.com/v1/calendarByCity?city=cairo&country=egypt';
var response=await http.get(Uri.parse(url));
var body = jsonDecode(response.body);

fajr=['data']['timings']['Fajr'];
  sunrise=['data']['timings']['Sunrise'];
  dhuhr=['data']['timings']['Dhuhr'];
  asr=['data']['timings']['Asr'];
  maghrib=['data']['timings']['Maghrib'];
  isha=['data']['timings']['Isha'];
prayes.add(PrayesCard(fajr: fajr,
    asr: asr,
    dhuhr: dhuhr,
    isha: isha,
    maghrib: maghrib,
    sunrise: sunrise));


setState(() {

});
}

@override
  void initState() {
    getPrays();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'مواقيت الصلاة',style: TextStyle(
          fontSize: 20,color: Colors.black
        ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/0_jiD0aX9gkKdZ3VK0.jpg'),
              )
            ),
          ),
          Column(
            children:prayes,
          )

        ],
      )
    );
  }
}
