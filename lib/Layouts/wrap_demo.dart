import 'package:flutter/material.dart';
class WrapDemo extends StatelessWidget {
  const WrapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child:  Wrap(//item တွေ မဆံတော့ရင် နောက်တစ်ကြောင်းကို ဆင်းသွားတာ
        spacing: 8,//space between item
        runSpacing: 4,//space between line
        children: [
          Chip(label: Text('Red')),
          Chip(label: Text('Green')),
          Chip(label: Text('Blue')),
          Chip(label: Text('Yellow')),
          Chip(label: Text('Orange')),
          Chip(label: Text('Pink')),
          Chip(label: Text('Black')),
          Chip(label: Text('Indigo')),
        ],
      ),
    );
  }
}
