import 'package:flutter/material.dart';
class SwipeDemo extends StatefulWidget {
  const SwipeDemo({super.key});

  @override
  State<SwipeDemo> createState() => _SwipeDemoState();
}

class _SwipeDemoState extends State<SwipeDemo> {

  List<String> items = List.generate(20, (index) => 'Bird ${index + 1}');

  void showInfo(dir,item,index){
     ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 600),
          content:  Text(dir == DismissDirection.startToEnd ?
          '$item is Deleted ' : '$item is Liked'
          ),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () => setState(() {
            items.insert(index, item);
          })
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
        itemBuilder: (context,index){
        String currentItems = items[index];
        return Dismissible(
          onDismissed: (dir){
            showInfo(dir, currentItems, index);
            setState(() {
              items.removeAt(index);
            });
          },
            background: Container(//left to right
              color: Colors.blueGrey,
              alignment: Alignment.centerLeft,
              child: const Icon(Icons.delete),
            ),
            secondaryBackground: Container(//right to left
              color: Colors.yellow,
              alignment: Alignment.center,
              child: const Icon(Icons.thumb_up),
            ),
            key: Key(currentItems),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: Image.asset('assets/images/bird.jpeg'),
                  title:  Text(currentItems),
                ),
              ),
            )
         );
        }
     );
   }
 }
