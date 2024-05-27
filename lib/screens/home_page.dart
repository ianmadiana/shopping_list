import 'package:flutter/material.dart';
import 'package:shopping_list/widgets/new_item.dart';

import '../widgets/grocery_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const GroceryList(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add new item',
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const NewItem(),
        )),
        child: const Icon(Icons.add),
      ),
    );
  }
}
