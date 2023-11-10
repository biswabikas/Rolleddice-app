import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class diceroller extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return dicerollerstate();
  }
}
class dicerollerstate extends State<diceroller>{
  var activediceimage='assets/images/dice-1.png';
void rolldice(){
 var random= Random().nextInt(6)+1;
  setState(() {
    activediceimage='assets/images/dice-$random.png';
  });

}
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(activediceimage,width: 200,),
          ),
          SizedBox(height: 11,),
          OutlinedButton(onPressed:rolldice, 
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          child: Text('roll dice',style: TextStyle(fontSize: 24),))
        ],
      );
  }
}
