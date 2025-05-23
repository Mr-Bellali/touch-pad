import 'package:flutter/material.dart';
import 'package:touche_pad/screens/search_screen.dart';
import 'package:touche_pad/screens/touche_pad_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchScreen(),
    );
  }
}
