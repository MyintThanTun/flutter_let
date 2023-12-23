
import 'package:flutter/material.dart';
class FractionallySizedBoxDemo extends StatelessWidget {
  const FractionallySizedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 20),
        const Text('Below is the fractionally sized box demo'),
        Flexible(//space တွေကို ရသလောက်နေရာယူတာ
            child: Center(
              child: FractionallySizedBox(//Sized box ka constant     frasizedbox ka a shin
                heightFactor: 0.2,//percent
                widthFactor: 0.5,//percent
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            )
         )
      ],
    );
  }
}
