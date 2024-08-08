import 'package:flutter/material.dart';

void main() {
  runApp(DemoM6App());
}

class DemoM6App extends StatelessWidget {
  const DemoM6App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo M06',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DemoPageM06(),
    );
  }
}

class DemoPageM06 extends StatefulWidget {

  @override
  State<DemoPageM06> createState() => _DemoPageM06State();
}

class _DemoPageM06State extends State<DemoPageM06> {
  // Compteur à 0 par défaut
  var counter = 0;

  void onClickIncrement(){
    //  incrementer le compteur
    counter += 1;
    print(counter);

    // Rafraichir le composant/ le widget (dirtyState)
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Demo M6"),
      ),
      body: Column(
        children: [
          Text("Le compteur est à : ${counter}"),
          ElevatedButton(onPressed: onClickIncrement, child: Text("Incrementer"))
        ],
      ),
    );
  }
}