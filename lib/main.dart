import 'package:flutter/material.dart';
import 'package:learnblockpattern/ui/screen/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter Block',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const CounterScreen() ,
    );
  }
}
