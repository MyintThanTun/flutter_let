import 'package:flutter/material.dart';

final List<String> colors = [
  'Red',
  'Green',
  'Blue',
  'Yellow',
  'Pink',
  'Grey',
  'Purple',
  'White',
  'Cyan',
  'Orange'
];

class ColorCard extends StatelessWidget {
  const ColorCard({super.key, required this.color});

  final String color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: const Text('Result Screen'),
                    ),
                    body: Center(child: Text('You have selected $color Color')),
                  )));
        },
        title: Text(color),
        leading: CircleAvatar(
          child: Text(color[0]),
        ),
      ),
    );
  }
}

class SearchBarDemo extends StatefulWidget {
  const SearchBarDemo({super.key});

  @override
  State<SearchBarDemo> createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellowAccent,
        title: const Text('Search Bar Demo'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: ColorSearchDelicate());
            },
            icon: const Icon(Icons.search),
            tooltip: 'Search',
          )
        ],
      ),
      body: ListView.builder(
          itemCount: colors.length,
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            return ColorCard(color: colors[index]);
          }),
    );
  }
}

class ColorSearchDelicate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions // search bar right mr paw tae hr // query = search bar mr yike tae words
    if (query.isNotEmpty) {
      return [
        IconButton(
            onPressed: () {
              query = '';
              showSuggestions(context); //
            },
            icon: const Icon(Icons.clear))
      ];
    }
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading // search bar left mr pw tr
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults //search bar mr enter nake yin pya tae hr
    List<String> result = colors.where((c) => c.startsWith(query)).toList();
    return ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: result.length,
        itemBuilder: (context, index) {
          return ColorCard(color: result[index]);
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions // အကြံပေး တယ့် ကောင်တွေ eg hint py tr pot
    List<String> result = colors.where((c) => c.startsWith(query)).toList();
    return ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: result.length,
        itemBuilder: (context, index) {
          return ColorCard(color: result[index]);
        });
  }
}
