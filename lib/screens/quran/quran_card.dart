import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class QuranCard extends StatelessWidget {
QuranCard({required this.name,required this.text,required this.ayahsName});
String name,text,ayahsName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){print(text);},
      child: Card(
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                AutoSizeText(text,style: TextStyle(fontSize: 15,color: Colors.black),),
                 AutoSizeText(name,style: TextStyle(fontSize: 25,color: Colors.black),),

               ],
             ),
             AutoSizeText(ayahsName,style: TextStyle(fontSize: 20,color: Colors.black),)
           ],
         ),
      ),
    );
  }
}

