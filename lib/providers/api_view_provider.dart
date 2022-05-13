import 'package:flutter/cupertino.dart';

import '../model/datamodel.dart';

class ApiViewProvider with ChangeNotifier {
  List<DataModel> datalist = [];

  void updateDataModel(List<DataModel> datalist) {
    this.datalist = datalist;
    notifyListeners();
  }
}
