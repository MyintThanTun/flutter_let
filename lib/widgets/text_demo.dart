import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
          'Do Something.',
       style: TextStyle(
         color: Colors.red,
         fontWeight: FontWeight.normal,
         fontSize:25,
         decoration: TextDecoration.underline ,
       ),),
    );
  }
}
