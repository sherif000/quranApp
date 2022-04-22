import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';

class QiblahCompassWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FlutterQiblah.qiblahStream,
      builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return CircularProgressIndicator();

        final qiblahDirection = snapshot.data;

        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Transform.rotate(
              angle: ((qiblahDirection?.direction ?? 0) * (pi / 180) * -1),
              child:Image.asset('images/compass-map-icon.png'),
            ),
            Transform.rotate(
              angle: ((qiblahDirection?.qiblah ?? 0) * (pi / 180) * -1),
              alignment: Alignment.center,
              child:Image.asset('images/images.png') ,
            ),
            Positioned(
              bottom: 8,
              child: Text("${qiblahDirection?.offset.toStringAsFixed(3)}°"),
            )
          ],
        );
      },
    );
  }
}