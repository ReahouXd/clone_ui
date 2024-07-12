import 'package:flutter/material.dart';
import 'package:virtual_bank/screen/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Virtual Bank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage()
    );
  }
}
