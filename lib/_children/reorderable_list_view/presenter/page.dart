
import 'package:flutter/material.dart';

class ReorderableListPage extends StatefulWidget {

  const ReorderableListPage({Key? key}) : super(key: key);

  @override
  State<ReorderableListPage> createState() => _ReorderableListPageState();
}

class _ReorderableListPageState extends State<ReorderableListPage> {


  final items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reorderable List'),
      ),
      body: Center(
        child: ReorderableListView(
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) newIndex--;
              final item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          },
          children: items.map((item) =>
              ListTile(
                key: ValueKey(item),
                title: Text(item),
              )
          ).toList(),
        ),
      ),
    );
  }
}