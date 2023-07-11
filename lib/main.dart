import 'package:flutter/material.dart';
import 'package:webapp_clone/screen/chat/chatlist.dart';
import 'package:webapp_clone/screen/homepage.dart';
import 'package:webapp_clone/screen/myads/myads.dart';
import 'package:webapp_clone/screen/navigation/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Navigation(),
    );
  }
}


