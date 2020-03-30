import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../blocs/blocs.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeBloc _themeChanger = Provider.of<ThemeBloc>(context);

    return new Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
                child: Text('Dark Theme'),
                onPressed: () => _themeChanger.setTheme(ThemeData.dark())),
            FlatButton(
                child: Text('Light Theme'),
                onPressed: () => _themeChanger.setTheme(ThemeData.light())),
          ],
        ),
      ),
    );
  }
}
