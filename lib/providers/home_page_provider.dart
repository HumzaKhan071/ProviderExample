import 'package:flutter/cupertino.dart';

class HomePageProvider with ChangeNotifier {
  bool? isEligible;
  String isEligibleMessage = "";

  void checkEligiblity(int age) {
    if (age >= 18) {
      isEligible = true;
      isEligibleMessage = "You are Eligible!";
      notifyListeners();
    } else {
      isEligible = false;
      isEligibleMessage = "You are not Eligible!";
      notifyListeners();
    }
  }
}
