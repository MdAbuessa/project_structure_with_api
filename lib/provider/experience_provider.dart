import 'package:flutter/material.dart';

class ExperienceProvider with ChangeNotifier {
  List<Map<String, dynamic>> _experienceList = [];

  List<Map<String, dynamic>> get experienceList => _experienceList;

  void addExperience(Map<String, dynamic> experience) {
    _experienceList.add(experience);
    notifyListeners();
  }

  void updateStartDate(DateTime date) {
    if (_experienceList.isNotEmpty) {
      _experienceList.last["Start Date"] = date.toIso8601String();
      notifyListeners();
    }
  }

  void updateEndDate(DateTime date) {
    if (_experienceList.isNotEmpty) {
      _experienceList.last["End Date"] = date.toIso8601String();
      notifyListeners();
    }
  }
}
