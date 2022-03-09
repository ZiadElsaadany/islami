import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';

class SebhaScreen extends StatefulWidget {
  @override
  _SebhaScreenState createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0 ;
  int index =0 ;
  List<String> tasbehList=['سبحان الله','الحمدلله','الله أكبر','لا اله الا الله','لا حول ولا قوةالا بالله'] ;
   double angle =0;
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
                  child: Image(
                    image: AssetImage("assets/images/head_sebha_logo.png"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.09),
                  child: GestureDetector(
                      onTap: (){
                        angle+=15;
                        sebhaName();
                        setState(() {});
                      } ,
                      child: Transform.rotate(
                        angle: angle,
                          child: Image(image: AssetImage("assets/images/body_sebha_logo.png")))),
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
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyThemeData.primaryColor.withOpacity(0.5),
                ),
                child: Text("$counter",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: MyThemeData.primaryColor,
                ),
                child: Text("${tasbehList[index]} ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                counter= 0 ;
                index=0;
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
  void sebhaName(){
     counter ++ ;
     if(counter %33== 0){
       index++ ;
     }
     if(counter%165== 0){
       index= 0 ;
     }
     setState(() { });
  }
}
