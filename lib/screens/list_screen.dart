import 'package:flutter/material.dart';
import 'package:hello_world/screens/counter.dart';
import 'package:hello_world/widget/app_bar.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
      'Item 6',
      'Item 7',
      'Item 8',
      'Item 9',
    ];

    return Scaffold(
      appBar: const MyAppBar(title: 'List Screen'),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Dynamic ${items[index]}"),
            subtitle: Text("Sub ${items[index]}"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(child: Text('T')),
            onTap: () {
              Navigator.pushNamed(context, Counter.path);
            },
          );
        },
      ),
      // body: ListView(
      //   children: const [
      //     ListTile(
      //       title: Text("List Item 1"),
      //       subtitle: Text("Sub Item 1"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //       leading: CircleAvatar(child: Text('T')),
      //     ),
      //     Divider(),
      //     ListTile(
      //       title: Text("List Item 2"),
      //       subtitle: Text("Sub Item 2"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //       leading: CircleAvatar(child: Text('T')),
      //     ),
      //     Divider(),
      //     ListTile(
      //       title: Text("List Item 3"),
      //       subtitle: Text("Sub Item 3"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //       leading: CircleAvatar(child: Text('T')),
      //     ),
      //     Divider(),
      //     ListTile(
      //       title: Text("List Item 4"),
      //       subtitle: Text("Sub Item 4"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //       leading: CircleAvatar(child: Text('T')),
      //     ),
      //     Divider(),
      //     ListTile(
      //       title: Text("List Item 5"),
      //       subtitle: Text("Sub Item 5"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //       leading: CircleAvatar(child: Text('T')),
      //     ),
      //   ],
      // ),
    );
  }
}
