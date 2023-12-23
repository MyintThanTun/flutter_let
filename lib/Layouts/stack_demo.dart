import 'package:flutter/material.dart';
class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(//စာအုပ်ထပ်သလိုဘဲ အရင် ထည့် တဲ့ကောက်က နောက်ဆုံးမှ ပေါ် မယ်
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          // Container(width: 300,height: 300,color: Colors.indigo),
          // Container(width: 200,height: 200,color: Colors.black54),
          // Container(width: 100,height: 100,color: Colors.yellow),
          Image.asset('assets/images/bird.jpeg'),
          const Text('Bird',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 22))
        ],
      ),
    );
  }
}
