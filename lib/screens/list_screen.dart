import 'package:flutter/material.dart';
import 'package:hello_world/my_app_bar.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      "Item 1",
      "Item 2",
      "Item 3",
      "Item 4",
      "Item 5",
      "Item 6",
      "Item 7",
      "Item 8",
      "Item 1",
      "Item 2",
      "Item 3",
      "Item 4",
      "Item 5",
      "Item 6",
      "Item 7",
      "Item 8"
    ];

    return Scaffold(
      appBar: MyAppBar(title: 'List Viee'),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Text('List ${items[index]}'),
        );
        
        
        // ListTile(
        //   title: Text('List ${items[index]}'),
        //   subtitle: Text('List Sub  ${items[index]}'),
        //   leading: CircleAvatar(
        //     child: Text('R'),
        //   ),
        //   onTap: () => {
            
        //   },
        //   trailing: Icon(Icons.arrow_forward_ios),
        // );
      }),
      // body: ListView(
      //   children: const [
      //     ListTile(
      //       title: Text('List Tile 1'),
      //       subtitle: Text('List Sub Tile 1'),
      //       leading: CircleAvatar(
      //         child: Text('R'),
      //       ),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     Divider(),
      //     ListTile(
      //       title: Text('List Tile 2'),
      //       subtitle: Text('List Sub Tile 2'),
      //       leading: CircleAvatar(
      //         child: Text('R'),
      //       ),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     Divider(),
      //     ListTile(
      //       title: Text('List Tile 3'),
      //       subtitle: Text('List Sub Tile 3'),
      //       leading: CircleAvatar(
      //         child: Text('R'),
      //       ),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     Divider(),
      //     ListTile(
      //       title: Text('List Tile 4'),
      //       subtitle: Text('List Sub Tile 4'),
      //       leading: CircleAvatar(
      //         child: Text('R'),
      //       ),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     Divider(),
      //   ],
      // ),
    );
  }
}
