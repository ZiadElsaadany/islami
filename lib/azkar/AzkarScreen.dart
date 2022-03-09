import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/azkar/azkarmasaa/AzkarMasaa.dart';
import 'package:islami/azkar/azkarsabah/Azkar.dart';

class AzkarScreen extends StatelessWidget {
  static String routeName = "AzkarScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: MyThemeData.accentColor.withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        title: Text("الأذكار", style: TextStyle(color: Colors.white,
        fontSize: 35
        ),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(
                  onPressed: (){
                Navigator.of(context).pushNamed(Azkar.routeName);
              },
                  child: Text("أذكار الصباح", style: TextStyle(
                    fontSize: 25,)),
              style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                shadowColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(100),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                )),
                backgroundColor: MaterialStateProperty.all(MyThemeData.primaryColor)
              ),
              ),
              ElevatedButton(
                  onPressed: (){
                Navigator.of(context).pushNamed(AzkaMsaa.routeName);
              },
                  child: Text("أذكار المساء", style: TextStyle(
                    fontSize: 25,
                  ),),
                style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    elevation: MaterialStateProperty.all(10),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                    )),
                    backgroundColor: MaterialStateProperty.all(MyThemeData.primaryColor)
                ),
              ),

            ],
          ),
        ],
      ),


    );
  }
}
