import 'package:flutter/material.dart';

class ThemeBloc with ChangeNotifier {
  ThemeData _themeData;

  ThemeBloc(this._themeData);

  getTheme() => _themeData;
  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }
}
