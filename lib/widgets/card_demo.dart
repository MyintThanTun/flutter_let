import 'package:flutter/material.dart';
class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(18),
      children: [
        const Card(
          color: Colors.black,
          elevation: 30,
          child: SizedBox(
            height: 100,
            child: Center(
              child: Text('Card One',style: TextStyle(color: Colors.yellow),),
            ),
          ),
        ),
        Card(
          color: Colors.black,
          elevation: 30,//shadow လုပ်တာ
          child: SizedBox(
            height: 100,
            child: InkWell(
              onTap: (){},//action twt htae lo ya tl
              splashColor: Colors.red,//နိပ်လိုက်တဲ့အခါ ပေါ်လာတဲ့အရောင်ပြောင်းတာ
              child: const Center(
                child: Text('Card Three(InkWell Border Radius)',style: TextStyle(color: Colors.yellow),),
              ),
            ),
          ),
        ),
        const Card(
          color: Colors.black,
          elevation: 30,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomRight: Radius.elliptical(50,200),
              )
          ),
          child: SizedBox(
            height: 100,
            child: Center(
              child: Text('Card CardThree(Custom Border Radius)',style: TextStyle(color: Colors.yellow),),
            ),
          ),
        ),
      ],
    );
  }
}
