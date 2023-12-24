import 'package:flutter/material.dart';

class SliverAppBarDemo extends StatelessWidget {
  const SliverAppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            foregroundColor: Colors.yellowAccent,
            pinned: true,
            expandedHeight: 170,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Sliver App Bar'),
              centerTitle: true,
              background: Image.asset('assets/images/bird.jpeg',fit: BoxFit.cover),
            ),
          ),
          SliverFillRemaining(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: List.generate(20, (index){
                return Card(
                  child: ListTile(
                    title: Text('Item $index'),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
