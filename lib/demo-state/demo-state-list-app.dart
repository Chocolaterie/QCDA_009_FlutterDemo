import 'package:flutter/material.dart';

void main() {
  runApp(DemoM6ListApp());
}

class DemoM6ListApp extends StatelessWidget {
  const DemoM6ListApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo List M06',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DemoPageListM06(),
    );
  }
}

class DemoPageListM06 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Demo M6"),
      ),
      body: ListFirstnameWidget(),
    );
  }
}

class ListFirstnameWidget extends StatefulWidget {

  @override
  State<ListFirstnameWidget> createState() => _ListFirstnameWidgetState();
}

class _ListFirstnameWidgetState extends State<ListFirstnameWidget> {
  // Liste de prénom
  List<String> firstnames = ["Voiture", "Antoine"];

  void OnClickRefresh() {
    // remplacer la liste de données
    firstnames = [
      "AntSoine",
      "wouafsusu",
      "Fatal Error",
      "Isaac tu parle trop vite",
      "Binding of Isaac",
      "La démo va trop vite",
      "Danette",
      "Carapuce avec des lunettes noires",
      "Merguez",
      "La chèvre"
    ];

    // Rafrachir le componsant
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: OnClickRefresh, child: Text("Rafraichir")),
        Expanded(
          child: ListView.builder(
              itemCount: firstnames.length,
              itemBuilder: (BuildContext context, int index) {
                // Je récupère la donnée grace à l'index de x item
                var firstname = firstnames[index];
                return Text("Le prénom : ${firstname}");
              }),
        )
      ],
    );
  }
}
