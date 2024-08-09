import 'package:dem_eni_flutter/demo-mvvm/counter-view-model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  
  void onClickIncrement(BuildContext context) {
    // Appeler une fonction du view model
    final counterViewModel = context.read<CounterViewModel>();
    counterViewModel.incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterViewModel(),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text("Demo MVVM Counter"),
          ),
          body: Column(
            children: [
              Consumer<CounterViewModel>(builder: (context, viewModel, child) {
                return Text("Le compteur est à : ${viewModel.counter}");
              }),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        onClickIncrement(context);
                      },
                      child: Text("Incrementer"))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Consumer<CounterViewModel>(
                    builder: (context, viewModel, child) {
                  return Text("Coucou j'ai un compteur : ${viewModel.counter}");
                }),
              ),
            ],
          ),
        );
      },
    );
  }
}
