import 'package:flutter/material.dart';
import 'package:islami/azkar/azkarsabah/Azkar.dart';
import 'package:islami/azkar/azkarsabah/AzkarScreen.dart';
import 'Home/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Home.routeName: (context) => Home(),
        Azkar.routeName:(context)=>Azkar(),
        AzkarScreen.routeName:(context)=>AzkarScreen(),

      },
      initialRoute: Home.routeName,
    );
  }
}
