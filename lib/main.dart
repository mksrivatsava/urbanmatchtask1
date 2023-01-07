// import 'package:breaking_bad_app/screens/character_list.dart';
// import 'package:breaking_bad_app/widget.dart';
import 'widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Urban_Match",
      theme: ThemeData(primarySwatch: Colors.red),
      home: CharacterList(),
    );
  }
}
