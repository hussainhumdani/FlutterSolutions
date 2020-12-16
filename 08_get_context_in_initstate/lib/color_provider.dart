import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color color = Colors.amber;
  Color getColor() {
    notifyListeners();
    return color;
  }
}
