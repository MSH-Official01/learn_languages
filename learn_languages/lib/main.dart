import 'package:flutter/material.dart';
import 'package:learn_languages/screen/home_page.dart';
import 'package:learn_languages/screen/second_ui.dart';
import 'package:learn_languages/screen/thirdUI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Learn languages',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
