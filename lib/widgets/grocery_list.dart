import 'package:flutter/material.dart';

import '../data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryItems.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(groceryItems[index].name),
        subtitle: Text(groceryItems[index].category.title),
        trailing: Text(
          groceryItems[index].quantity.toString(),
        ),
        leading: Container(
          height: 24,
          width: 24,
          color: groceryItems[index].category.color,
        ),
        onTap: () {},
      ),
    );
  }
}
