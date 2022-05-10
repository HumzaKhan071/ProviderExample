import 'package:flutter/cupertino.dart';

class DetailPageProvider with ChangeNotifier {
  bool? isDOBCorrect;
  String Dob = "";

  void checkDOB(int dob ) {
    if (dob == 23122020) {
      isDOBCorrect = true;
      Dob = "DOB is Correct";
      notifyListeners();
    } else {
      isDOBCorrect = false;
      Dob = "DOB is not Correct";
      notifyListeners();
    }
  }
}
