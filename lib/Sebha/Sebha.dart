import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';

class SebhaScreen extends StatefulWidget {
  @override
  _SebhaScreenState createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int currentIndex= 0 ;
  String ? SebhaNames;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 25,
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 70),
                  child: GestureDetector(
                      onTap: (){
                        currentIndex++;
                        setState(() {});
                      } ,
                      child: Image(image: AssetImage("assets/images/body_sebha_logo.png"))),
                ),
                Container(
                  child: Image(
                    image: AssetImage("assets/images/head_sebha_logo.png"),
                  ),
                ),
              ],
            ),
            Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),

                child: Text("عدد التسبيحات",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: MyThemeData.accentColor.withOpacity(0.5),
                ),
                ),
              ) ,
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: MyThemeData.primaryColor.withOpacity(0.5),
                ),
                child: Text("$currentIndex",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: MyThemeData.primaryColor,
                ),
                child: Text("${sebhaName()} ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                currentIndex = 0;
                setState(() {});
              },
                child: Icon(Icons.settings_backup_restore,
                color: Colors.black, size: 35,
                ),
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
               )
            ],
            )
          ],
        ),
      ),
    );
  }
  String ? sebhaName(){
    if(currentIndex==0  || currentIndex <33 ){
    SebhaNames = "سبحان الله" ;
    return SebhaNames;
    }
    else if(currentIndex >=33&&currentIndex < 66  ){
    SebhaNames = "الحمدلله" ;
    return SebhaNames;
    }
    else if(currentIndex >=66 && currentIndex <99){
      SebhaNames = "الله اكبر" ;
      return SebhaNames;
    }
    else if(currentIndex ==99){
      SebhaNames = "لا اله الا الله" ;
      currentIndex=-1;
      return SebhaNames;
    }

  }
}
