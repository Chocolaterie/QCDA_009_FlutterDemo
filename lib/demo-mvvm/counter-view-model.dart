import 'package:flutter/cupertino.dart';

class CounterViewModel with ChangeNotifier {

  int counter = 0;

  void incrementCounter(){
    // Change une valeur
    counter++;
    // Notifier les observers/listeners (donc les composants qui nous écoutent)
    notifyListeners();
  }
}