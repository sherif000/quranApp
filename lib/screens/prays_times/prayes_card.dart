import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class PrayesCard extends StatelessWidget {
  PrayesCard({required this.fajr,required this.asr,required this.dhuhr,required this.isha,required this.maghrib,required this.sunrise});
  String fajr='',sunrise='',dhuhr='',asr='',maghrib='',isha='';
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          AutoSizeText(
            fajr,style: TextStyle(fontSize: 15,color: Colors.white),
          ),
          SizedBox( height: (10/375.0)*MediaQuery.of(context).size.height,),
          AutoSizeText(
            sunrise,style: TextStyle(fontSize: 15,color: Colors.white),
          ),
          SizedBox( height: (10/375.0)*MediaQuery.of(context).size.height,), AutoSizeText(
      dhuhr,style: TextStyle(fontSize: 15,color: Colors.white),
          ),
          SizedBox( height: (10/375.0)*MediaQuery.of(context).size.height,), AutoSizeText(
      asr,style: TextStyle(fontSize: 15,color: Colors.white),
          ),
          SizedBox( height: (10/375.0)*MediaQuery.of(context).size.height,), AutoSizeText(
            maghrib,style: TextStyle(fontSize: 15,color: Colors.white),
          ),
          SizedBox( height: (10/375.0)*MediaQuery.of(context).size.height,), AutoSizeText(
           isha,style: TextStyle(fontSize: 15,color: Colors.white),
          ),

        ],
      ),
    );
  }
}
