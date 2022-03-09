import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/azkar/azkarmasaa/AzkarMasaa.dart';
import 'package:islami/azkar/azkarnoom/AzkarNoom.dart';
import 'package:islami/azkar/azkarsabah/Azkar.dart';

class AzkarScreen extends StatefulWidget {
  static String routeName = "AzkarScreen";

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        title: Text(
          "الأذكار",
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Azkar.routeName);
                },
                child: Text("أذكار الصباح",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    )),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    elevation: MaterialStateProperty.all(100),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                    backgroundColor:
                        MaterialStateProperty.all(MyThemeData.primaryColor)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AzkaMsaa.routeName);
                },
                child: Text(
                  "أذكار المساء",
                  style: TextStyle(
                    fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    elevation: MaterialStateProperty.all(10),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                    backgroundColor:
                        MaterialStateProperty.all(MyThemeData.primaryColor)),
              ),

            ],
          ),
          Spacer(flex: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AzkarNoom.routeName);
                },
                child: Text(
                  "أذكار النوم",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    elevation: MaterialStateProperty.all(10),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                    backgroundColor:
                    MaterialStateProperty.all(MyThemeData.primaryColor)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AzkaMsaa.routeName);
                },
                child: Text(
                  "أذكار المساء",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    elevation: MaterialStateProperty.all(10),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                    backgroundColor:
                    MaterialStateProperty.all(MyThemeData.primaryColor)),
              ),
            ],
          ),


          Spacer(flex: 5,)

        ],
      ),
    );
  }
}
