import 'package:flutter/material.dart';

class OnBordingController with ChangeNotifier {
  final PageController pageController = PageController();
  int currentIndex = 0;
  bool isLastIndex = false;

  void changeIndex(int index) {
    currentIndex = index;
    if (index == 2) {
      isLastIndex = true;
    } else {
      isLastIndex = false;
    }
    notifyListeners();
  }
}
