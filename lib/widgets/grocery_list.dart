import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  final List<GroceryItem> _groceryItems = [];

  void _addItem() async {
    final newItems = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const NewItem(),
      ),
    );
    // Blok kode agar tombol back di newItem berfungsi dengan baik
    if (newItems == null) {
      return;
    }
    setState(() {
      _groceryItems.add(newItems);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        centerTitle: true,
        elevation: 0,
      ),
      body: _groceryItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'assets/lottie/empty-box2.json',
                    height: 300,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'No items yet!',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: _groceryItems.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(_groceryItems[index].name),
                subtitle: Text(_groceryItems[index].category.title),
                trailing: Text(
                  _groceryItems[index].quantity.toString(),
                ),
                leading: Container(
                  height: 24,
                  width: 24,
                  color: _groceryItems[index].category.color,
                ),
                onTap: () {},
              ),
            ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add new item',
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
