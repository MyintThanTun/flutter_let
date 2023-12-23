import 'package:flutter/material.dart';
class ExpansionTileDemo extends StatelessWidget {
  const ExpansionTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          child: ExpansionTile(
            shape: Border.all(color: Colors.transparent),
            title: const Text('Bird'),
            leading: const Icon(Icons.image),
            trailing: const Icon(Icons.add_a_photo),
            children: [
              Image.asset('assets/images/bird.jpeg'),
              const Text('This is description of a bird')
            ],
          ),
        ),
      ),
    );
  }
}
