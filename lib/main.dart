import 'package:flutter/material.dart';
import 'package:modelrouteofexample/viewA.dart';
import 'package:modelrouteofexample/viewB.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/view_b': (context) => const ViewB(),
      },
      home: const ViewA(),
    );
  }
}
