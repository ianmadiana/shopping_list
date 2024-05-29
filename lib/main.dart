import 'package:flutter/material.dart';
import 'package:shopping_list/widgets/grocery_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String title = 'Flutter Groceries';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 123, 2, 163),
            brightness: Brightness.light,
            // surface: Color.fromARGB(255, 0, 136, 255),
          ),
        ),
        home: const GroceryList());
    // home: NewItem());
  }
}
