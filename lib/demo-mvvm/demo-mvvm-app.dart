import 'package:dem_eni_flutter/demo-mvvm/demo-mvvm-counter-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DemoMVVMApp());
}

class DemoMVVMApp extends StatelessWidget {
  const DemoMVVMApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo MVVM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CounterPage(),
    );
  }
}