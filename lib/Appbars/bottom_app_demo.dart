import 'package:flutter/material.dart';

class BottomAppBarDemo extends StatelessWidget {
  const BottomAppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.lightGreen,
        tooltip: 'Clicked!',
        mini: false, // true -> small button
        onPressed: () {},
        child: const Icon(Icons.add_alarm),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.greenAccent,
        child: Row(
          children: [
            IconButton(
                tooltip: 'Menu Bottom',
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      height: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/bird.jpeg'))),
                      child: const SizedBox(
                        width: double.infinity,
                        child: Text('Bottom Sheet'),
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.menu_book)),
            const Text('Click Menu Book To See Bottom sheet'),
          ],
        ),
      ),
    );
  }
}
