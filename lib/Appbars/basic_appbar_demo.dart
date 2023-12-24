import 'package:flutter/material.dart';

class BasicAppBarDemo extends StatelessWidget {
  const BasicAppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: const Icon(Icons.home),
        title: const Text('Basic AppBar'),
        actions: [
          IconButton(
              tooltip: 'Message',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('Message!'),
                    duration: const Duration(milliseconds: 400),
                    action: SnackBarAction(label: 'Undo', onPressed: () {})));
              },
              icon: const Icon(Icons.message)),
          IconButton(
              tooltip: 'Setting',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Setting!'),
                  duration: const Duration(
                    milliseconds: 400,
                  ),
                  action: SnackBarAction(
                    onPressed: () {},
                    label: 'Undo',
                  ),
                ));
              },
              icon: const Icon(Icons.settings)),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('Boat')),
                const PopupMenuItem(child: Text('Train')),
                const PopupMenuItem(child: Text('BMW')),
                const PopupMenuItem(child: Text('Lamborghini')),
                const PopupMenuItem(child: Text('Bugatti')),
              ];
            },
            tooltip: 'Popup Menu',
          )
        ],
      ),
    );
  }
}
