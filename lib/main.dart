import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/item_screen.dart';
import 'package:shoppingapp/screens/screens.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {"itemScreen": (context) => ItemScreen()},
        debugShowCheckedModeBanner: false,
        home: Screens());
  }
}
