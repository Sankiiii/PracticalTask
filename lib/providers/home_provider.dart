
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  List<Map<String, String>> posts = List.generate(10, (i) => {
    'username': 'User ${i + 1}',
    'post': 'This is post number ${i + 1}'
  });

  void refresh() {
    posts = List.generate(10, (i) => {
      'username': 'User ${i + 1}',
      'post': 'This is post number ${i + 1} (refreshed)'
    });
    notifyListeners();
  }
}