import 'package:dem_eni_flutter/demo-navigation/demo-nav-page-1.dart';
import 'package:dem_eni_flutter/demo-navigation/demo-nav-page-2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes : {
        "/" : (context) => DemoNavPage1(),
        "/page2" : (context) => DemoNavPage2()
      }
    );
  }
}
