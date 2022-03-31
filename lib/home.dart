import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class myHomePage extends StatefulWidget {
  myHomePage({Key? key}) : super(key: key);

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  bool busy = false;
  double _width = 70;
  double _height = 70;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Text("Theme in flutter"),
            SizedBox(
              height: 20,
            ),
            Text(
              "This is Lottie Example",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Lottie.asset('assets/LottieLogo1.json', height: 250, width: 250),
            SizedBox(
              height: 10,
            ),
            Text(
              "This is Rive Example",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 250,
              width: 250,
              child: RiveAnimation.asset(
                "assets/new_file.riv",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "This is AnimatedContainer",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    final random = Random();

                    _width = random.nextInt(500).toDouble();
                    _height = random.nextInt(500).toDouble();

                    _color = Color.fromRGBO(
                      random.nextInt(300),
                      random.nextInt(300),
                      random.nextInt(300),
                      1,
                    );

                    _borderRadius =
                        BorderRadius.circular(random.nextInt(100).toDouble());
                  });
                },
                child: Text("Check"))
          ],
        ),
      )),
    ));
  }
}
