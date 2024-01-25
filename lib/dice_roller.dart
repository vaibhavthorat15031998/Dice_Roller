import 'package:flutter/material.dart';
import 'dart:math';


class DiceRoller extends StatefulWidget{
 const   DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
   return _DiceRollerState();
  }

}


class _DiceRollerState  extends State<DiceRoller>{
  var currentDiceRoll = 2;
 

void rollDice(){
  var diceRoll = Random().nextInt(6) + 1;
  setState(() {
    currentDiceRoll = diceRoll;
     
  });
   
   
}
  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                
              Image.asset(
                
               'assets/images/dice_$currentDiceRoll.png',
             // color: Colors.white,
              
              width: 200,
            ),
          TextButton(
            onPressed: rollDice, 
            style: TextButton.styleFrom(
              padding: EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,textStyle:TextStyle(fontSize: 28)  ),
            child: Text('Roll Dice'),
            ),
            ],
            );
   
  }
}