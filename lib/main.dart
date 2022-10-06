import 'package:flutter/material.dart';
import 'package:tab_bar/screen/homepage.dart';
import 'package:tab_bar/tab_new/tabnew.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
