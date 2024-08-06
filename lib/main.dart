import 'package:flutter/material.dart';

const primaryBGColor = Color(0xFF2D435C);
const primaryTextStyle = TextStyle(color: Colors.white);

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Demo Beurre Salé"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Ligne 1",
              textAlign: TextAlign.center,
            ),
            Text("Ligne 2 - tata toto"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 300, child: Text("Ligne 3 - Colonne 1")),
                Text("Ligne 3 - Colonne 2")
              ],
            ),
            Container(
              color: primaryBGColor,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                          style: primaryTextStyle,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            "Lorem ipsum qsdqsdsqdsqdqsdqsd dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam")),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
