import 'package:flutter/material.dart';
import 'package:theme_rive_lottie_animation/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        splashColor: Colors.deepOrangeAccent,
        appBarTheme: AppBarTheme(color: Colors.limeAccent),
        textTheme: TextTheme(headline3: TextStyle(fontSize: 25)),
        brightness: Brightness.dark),
    home: myHomePage(),
  ));
}
