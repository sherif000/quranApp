import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:quran/screens/quran/quran_card.dart';
class QuranScreen extends StatefulWidget {
  const QuranScreen({Key? key}) : super(key: key);

  @override
  _QuranScreenState createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
   List<QuranCard> myCard=[];
  getQuran()async {
    String text='',name='',ayahsName='';
    String url='http://api.alquran.cloud/v1/quran/quran-uthmani';
    var response=await http.get(Uri.parse(url));
    var body =jsonDecode(response.body);
    var lenght1=body ['data']["surahs"].length;
    var lenght2=body['data']['surahs']['ayahs'].length;


    for(int i=0; i <lenght1;i++){
      name=body['data']['surahs'][i]['name'];
      text=body['data']['surahs'][i]['revelationType'];
      for(int j=0;j<lenght2;j++){
        ayahsName=body['data']['surahs'][i]['ayahs'][j]['text'];
      }

      myCard.add(QuranCard(
          name: name,
          text: text,
      ayahsName: ayahsName,));
    }
setState(() {

});
  }
  @override
  void initState() {
    myCard.isEmpty? getQuran():null;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:(myCard.isEmpty)?Center(child: CircularProgressIndicator(),): ListView(
            children:myCard,
          ),
        ));
  }
}
