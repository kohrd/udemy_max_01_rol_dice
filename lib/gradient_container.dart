import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // konstruktor
  const GradientContainer(
      {required this.color1, required this.color2, super.key});

  //alternatywny konstruktor
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;


  void rollDice(){
    //...

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          // colors: const [ Color.fromARGB(200, 45, 89, 102),
          //   Color.fromARGB(1, 1, 1, 2)
          // ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(

        // child: MyTextStyle("Flutter really sucks!"),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-2.png', width: 200),
            SizedBox(height: 200,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(foregroundColor: Colors.white54, textStyle: const TextStyle(fontSize: 40) ),
              child: const Text('Rzuć kostką!'),

            ),
          ],
        ),
        // Image.assets - po krope jest nazwa alternatywnego konstrukora klasy Image
      ),
    );
    throw UnimplementedError();
  }
}
