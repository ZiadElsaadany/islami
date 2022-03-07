import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:islami/Ahadeth/Ahadeth.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/Quran/Quran.dart';
import 'package:islami/Radio/Radio.dart';
import 'package:islami/Sebha/Sebha.dart';

class Home extends StatefulWidget {
  static const String routeName= "home" ;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png"),
          fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
         title: Text("islami" , style: TextStyle(color: Colors.black, fontSize: 30),),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: MyThemeData.primaryColor,
          ),
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            selectedItemColor: MyThemeData.accentColor,
            currentIndex: currentIndex,
            onTap: (index){
              currentIndex =index ;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/moshaf_gold.png")),label: "Quran"
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),label: "sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Group 6.png")),label: "hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),label: "radio"),
            ],
          ),
        ),
        body: gitBody(),
      ),
    );
  }
  Widget ? gitBody() {
    if(currentIndex==0){
      return QuranScreen();
    }
    if(currentIndex==1){
      return SebhaScreen();
    }
    if(currentIndex==2){
      return Ahadeth();
    }
    if(currentIndex==3){
      return RadioFragment();
    }
}
}
