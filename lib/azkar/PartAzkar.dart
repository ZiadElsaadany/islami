import 'package:flutter/material.dart';

import '../MyThemeData.dart';

class Part extends StatefulWidget {
  Color colors;
  int number;  // How many times will it be repeated?
  Part(this.number,this.colors);
  @override
  _PartState createState() => _PartState();
}
class _PartState extends State<Part> {
  @override


  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: widget.colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: MaterialButton(onPressed: (){
        if( widget.number >0){
         widget.number-- ;
        }

        if(widget.number==0){
          widget.colors= MyThemeData.accentColor;
        }
        setState(() {
        });
      } ,
        child: Text('${widget.number}' , style: TextStyle(
            color: Colors.white
        ),),
      ),
    );
  }
}



class PartText extends StatelessWidget {
  String azkarName;
  PartText(this.azkarName);
  @override
  Widget build(BuildContext context) {
    return Text(
      azkarName,
      textAlign: TextAlign.end,
      style: TextStyle(
          color: Colors.white ,
          fontSize: 25.0
      ),);
  }
}
class Part2Text extends StatelessWidget {
  String azkarName;
  Part2Text(this.azkarName);
  @override
  Widget build(BuildContext context) {
    return Text(
      "$azkarName" , style: TextStyle(
      color: Colors.grey,
      fontSize: 15.0,
    ),
      textAlign: TextAlign.end,
    );
  }
}
