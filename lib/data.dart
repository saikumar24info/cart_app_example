import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Data extends ChangeNotifier {
  String name;
  Data({required this.name});
  List<String> items = <String>[];

  void add(String item) {
    items.add(item);
    notifyListeners();
  }

  void remove(String item) {
    items.remove(item);
    notifyListeners();
  }
}
