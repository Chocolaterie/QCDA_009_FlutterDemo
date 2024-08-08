import 'package:dem_eni_flutter/demo-validation/demo-validation-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DemoValidationApp());
}

class DemoValidationApp extends StatelessWidget {
  const DemoValidationApp({super.key});

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
        "/" : (context) => DemoValidationPage(),
      }
    );
  }
}
