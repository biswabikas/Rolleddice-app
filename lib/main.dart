import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( MaterialApp(
    home: Scaffold(
      body: Gradient_container()
    ),
  ));
}
class Gradient_container extends StatelessWidget{
  Gradient_container({
    super.key,
    
  });
var activediceimage='assets/images/dice-1.png';
void rolldice(){
activediceimage='assets/images/dice-2.png';
}
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
             Color.fromARGB(255, 56, 1, 151),
            Color.fromARGB(255, 20, 3, 49),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
      ),
      child: diceroller()
    );
  }
}
class Our_text extends StatelessWidget{
  Our_text(this.text,{super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),);
  }
}