import 'package:flutter/material.dart';
class GirdViewDemo extends StatelessWidget {
  const GirdViewDemo({super.key});


  Widget buildItem(){
    return Card(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bird.jpeg'),
            fit: BoxFit.cover//photo nae card nae fit Size pyit aung loat tr
          )
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,//scroll direction pyong tr
      padding: const EdgeInsets.all(16),
      itemCount: 60,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16
        ),
        itemBuilder: (context,index){
          return buildItem();
    }
    );
  }
}
