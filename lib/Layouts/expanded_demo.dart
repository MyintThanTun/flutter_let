import 'package:flutter/material.dart';
class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(// ရသလောက် space တွေကို နေရာယူတယ်
          flex: 1,//နေရာ ယူတဲ့ အချိုး ကို ချိန်တာ
            child: Container(
          color: Colors.yellow,
         )
        ),
        Expanded(// ရသလောက် space တွေကို နေရာယူတယ်
          flex: 2,
            child: Container(
              color: Colors.black54,
            )
        ),Expanded(// ရသလောက် space တွေကို နေရာယူတယ်
          flex: 5,
            child: Container(
              color: Colors.white,
            )
        )
      ],
    );
  }
}
