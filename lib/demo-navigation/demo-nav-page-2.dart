import 'package:flutter/material.dart';

class DemoNavPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Demo Page 2 "),
        ),
        body: Center(
          child: Column(
            children: [
              Text("page 2"),
            ],
          ),
        ));
  }
}
