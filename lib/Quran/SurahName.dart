import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurahName extends StatelessWidget {
  String surahName ;
  SurahName(this.surahName);
  @override
  Widget build(BuildContext context) {
    return Text(surahName ,
    style: TextStyle(
     fontSize: 25 ,
     fontWeight: FontWeight.bold,
    ),
      textAlign: TextAlign.center,
     );
  }
}
