import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
    throw UnimplementedError();
  }

}


class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice(){
    setState((){
      // obecnosc tej funkcji powoduje ponowne uruchomienie funkcji build i zmianie stateful widzeta
      activeDiceImage =  'assets/images/dice-4.png';
      print("roll Dice function");


    });

    //...

  }

  @override
  Widget build( context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200),
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
