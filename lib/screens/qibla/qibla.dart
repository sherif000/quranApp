import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:quran/screens/qibla/qibla_compass.dart';


class Qibla extends StatefulWidget {
  const Qibla({Key? key}) : super(key: key);

  @override
  _QiblaState createState() => _QiblaState();
}

class _QiblaState extends State<Qibla> {
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'QIBLA COMPASS',style: TextStyle(
            fontSize: 20,color: Colors.black,
          ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: FutureBuilder(
          future: _deviceSupport,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              );

            if (snapshot.hasError)
              return Center(
                child: Text('Error: ${snapshot.error.toString()}'),
              );
            if (snapshot.hasData)
              return QiblahCompassWidget();
            else
              return Container(
                child: Text('Error'),
              );
          },
        ),
      ),
    );
  }
}
