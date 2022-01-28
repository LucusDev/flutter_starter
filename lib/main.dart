import 'package:flutter/material.dart';
import 'package:flutter_starter/settings/model/database/settings_db.dart';
import 'package:hive/hive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change this',
      home: Text(""),
    );
  }
}
