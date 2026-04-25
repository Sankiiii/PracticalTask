
import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  String _username = 'John Doe';
  String _bio = 'Flutter Developer';
  String _profilePictureUrl = 'https://via.placeholder.com/150';

  String get username => _username;
  String get bio => _bio;
  String get profilePictureUrl => _profilePictureUrl;

  void updateProfile(String username, String bio, String profilePictureUrl) {
    _username = username;
    _bio = bio;
    _profilePictureUrl = profilePictureUrl;
    notifyListeners();
  }
}