import 'package:flutter/material.dart';
class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {

    void showSnackBar({message}){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message ?? 'Button Clicked'),duration: const Duration(milliseconds: 500))
      );
    }
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 18),
      children: [
       ButtonBar(//button twy ko ta role htae mr pw aung loat tr
         alignment: MainAxisAlignment.spaceBetween,//button twy ko space char tr
         children: [
           ElevatedButton(
               onPressed: showSnackBar,
               child: const Text('Elevated Button')),
           const ElevatedButton(
               onPressed: null,
               child: Text('Disabled Elevated  Button'))
         ],
       ),
        ButtonBar(//button twy ko ta role htae mr pw aung loat tr
          alignment: MainAxisAlignment.spaceBetween,//button twy ko space char tr
          children: [
            OutlinedButton(
                onPressed: showSnackBar,
                child: const Text('OutLine Button')),
            const ElevatedButton(
                onPressed: null,
                child: Text('Disabled OutLine  Button'))
          ],
        ),
        ButtonBar(//button twy ko ta role htae mr pw aung loat tr
          alignment: MainAxisAlignment.spaceBetween,//button twy ko space char tr
          children: [
            TextButton(
                onPressed: showSnackBar,
                child: const Text('Text Button')),
            const ElevatedButton(
                onPressed: null,
                child: Text('Disabled Text Button'))
          ],
        ),
        Center(
          child: IconButton(
            icon: const Icon(Icons.call),
            onPressed: showSnackBar,
            tooltip: 'Calling',//ဖုန်းမှာဆို ဖိထားလျှင် ပြတဲ့ဟာ
          ),
        )
      ],
    );
  }
}
