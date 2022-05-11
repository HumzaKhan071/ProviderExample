import 'dart:async';

import 'package:flutter/cupertino.dart';

class TimePageProvider with ChangeNotifier {
  int start = 0;
  String name = "Humza Khan";

  void updateStart(int start) {
    this.start = start;
    notifyListeners();
  }

  void updateTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      updateStart(timer.tick);
    });
  }

  void updateName(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getName(String name) async {
    Future.delayed(Duration(seconds: 5), (() {
      updateName(name);
    }));
  }

  // change Widget

  bool change = false;

  void updateWidget() {
    change = !change;
    notifyListeners();
  }
}
