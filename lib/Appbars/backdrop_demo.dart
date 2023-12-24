import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class BackDropDemo extends StatelessWidget {
  const BackDropDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
        appBar: BackdropAppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('BackDrop Demo'),
          centerTitle: true,
        ),
        headerHeight: 120,
        backLayer: Container(
          color: Colors.deepPurple,
          child: const Center(
            child:  Text('Back Layer'),
          ),
        ),
        frontLayer: Container(
          color: Colors.yellowAccent,
          child: const Center(
            child:  Text('Front Layer'),
          ),
        ));
  }
}
