import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(200, 45, 89, 102),
        body: GradientContainer(color1: Color.fromARGB(200, 45, 89, 102), color2: Color.fromARGB(1, 1, 1, 2) )
      ),
    ),
  );
}


/*
,
            //


 */

