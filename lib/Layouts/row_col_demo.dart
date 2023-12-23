import 'package:flutter/material.dart';
class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    var items = [
      const Icon(Icons.star,size: 50,),
      const Icon(Icons.star,size: 100),
      const Icon(Icons.star,size: 50)
    ];
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Column( // row ka horizontal// column ka vertical
          mainAxisSize: MainAxisSize.max, //row ရဲ့ size ကို ပြောတာ mainaxissize က default ka max
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,//cross ka column so horizontal pyit //row so vertical pyit
          children: items,
        ),
      ),
    );
  }
}
