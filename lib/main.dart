import 'package:flutter/material.dart';
import 'package:create_memes/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Create Memes',
      theme: ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}
