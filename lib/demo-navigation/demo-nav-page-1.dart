import 'package:flutter/material.dart';

class DemoNavPage1 extends StatelessWidget {

  void onClickChangePage(BuildContext context) {
    Navigator.pushNamed(context, "/page2");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Demo Nav page 1"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Page 1"),
              ElevatedButton(onPressed: () { onClickChangePage(context); }, child: Text("Ouvrire page 2"))
            ],
          ),
        ));
  }
}
