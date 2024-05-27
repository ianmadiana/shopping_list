import 'package:flutter/material.dart';
import 'package:shopping_list/widgets/new_item.dart';

import 'screens/home_page.dart';

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
            seedColor: const Color.fromARGB(255, 147, 229, 250),
            brightness: Brightness.light,
            // surface: Color.fromARGB(255, 0, 136, 255),
          ),
        ),
        // home: HomePage(title: title));
        home: NewItem());
  }
}
