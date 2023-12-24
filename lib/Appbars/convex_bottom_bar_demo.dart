import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class ConvexBottomBarDemo extends StatefulWidget {
  const ConvexBottomBarDemo({super.key});

  @override
  State<ConvexBottomBarDemo> createState() => _ConvexBottomBarDemoState();
}

class _ConvexBottomBarDemoState extends State<ConvexBottomBarDemo> {
  int index = 0;
  var icons = [Icons.home, Icons.map, Icons.add, Icons.message, Icons.people];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(icons[index],size: 130,color: Colors.deepOrangeAccent),
      ),
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.flip,
      items: const [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.map, title: 'Discovery'),
        TabItem(icon: Icons.add, title: 'Add'),
        TabItem(icon: Icons.message, title: 'Message'),
        TabItem(icon: Icons.people, title: 'Profile'),
      ],
      onTap: (int newIndex) => setState(() {
        index = newIndex;
      }),
    ));
  }
}
