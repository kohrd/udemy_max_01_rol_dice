import 'package:flutter/material.dart';
import 'dart:math';


var randomizer = Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}


class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 2;

  void rollDice(){
    setState((){
      // obecnosc tej funkcji powoduje ponowne uruchomienie funkcji build i zmianie stateful widzeta
      currentDiceRoll = randomizer.nextInt(5) + 1;
      // print("roll Dice functio5");
    });
  }

  @override
  Widget build( context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset( 'assets/images/dice-$currentDiceRoll.png', width: 200),
        SizedBox(height: 200,),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(foregroundColor: Colors.white54, textStyle: const TextStyle(fontSize: 40) ),
          child: const Text('Rzuć kostką!'),
        ),
      ],
    );    throw UnimplementedError();
  }
}
