import 'package:flutter/material.dart';
import 'package:newproject/Homepage.dart';

void main() {
  runApp(const LangauageChangerApp());
}

class LangauageChangerApp extends StatelessWidget {
  const LangauageChangerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
