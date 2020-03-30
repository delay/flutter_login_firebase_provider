import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;
  setTheme(ThemeData theme) {
    _themeData = theme;

    notifyListeners();
  }
}

ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Color(0xff1f655d),
    accentColor: Color(0xff40bf7a),
    textTheme: TextTheme(
        title: TextStyle(color: Color(0xff40bf7a)),
        subtitle: TextStyle(color: Colors.white),
        subhead: TextStyle(color: Color(0xff40bf7a))),
    appBarTheme: AppBarTheme(color: Color(0xff1f655d)));

ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Color(0xfff5f5f5),
    accentColor: Color(0xff40bf7a),
    textTheme: TextTheme(
        title: TextStyle(color: Colors.black54),
        subtitle: TextStyle(color: Colors.grey),
        subhead: TextStyle(color: Colors.white)),
    appBarTheme: AppBarTheme(
        color: Color(0xff1f655d),
        actionsIconTheme: IconThemeData(color: Colors.white)));
