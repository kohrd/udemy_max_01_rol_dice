import 'package:flutter/material.dart';

class MyTextStyle extends StatelessWidget {
  const MyTextStyle(this.someTextForConstructor , {super.key});

  final String someTextForConstructor;


  @override
  Widget build(BuildContext context) {
    return  Text(
      someTextForConstructor,
      style: const TextStyle(fontSize: 20, color: Colors.white38),
    );
    throw UnimplementedError();
  }
}
