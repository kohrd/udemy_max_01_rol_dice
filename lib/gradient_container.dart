

import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});




  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [ Color.fromARGB(200, 45, 89, 102),
              Color.fromARGB(1, 1, 1, 2)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight

        ),
      ),
      child: const Center(
          child: Text(
            "Flutter sucks",
            style: TextStyle(fontSize: 20, color: Colors.white60),
          )),
    );
    throw UnimplementedError();
  }


}