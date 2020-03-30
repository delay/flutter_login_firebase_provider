import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'blocs/blocs.dart';
import 'ui/ui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<User>.value(stream: Global.userRef.documentStream),
        StreamProvider<FirebaseUser>.value(stream: AuthService().user),
      ],
      child: MaterialApp(
        // Firebase Analytics
        /*navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
        ],*/

        // Named Routes
        routes: {
          '/': (context) => SignInScreen(),
          '/home': (context) => Home(),
          '/signup': (context) => SignUpScreen(),
          '/forgot-password': (context) => ForgotPasswordScreen(),
        },

        // Theme
        theme: ThemeData(
          fontFamily: 'Nunito',
          bottomAppBarTheme: BottomAppBarTheme(
            color: Colors.black87,
          ),
          brightness: Brightness.light,
          textTheme: TextTheme(
            bodyText2: TextStyle(fontSize: 18),
            bodyText1: TextStyle(fontSize: 16),
            button: TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold),
            headline5: TextStyle(fontWeight: FontWeight.bold),
            subtitle1: TextStyle(color: Colors.grey),
          ),
          buttonTheme: ButtonThemeData(),
        ),
      ),
    );
    //MultiProvider(providers: null)
    //ChangeNotifierProvider<ThemeBloc>(
    // builder: (_) => ThemeBloc(ThemeData.dark()),
    // child: MaterialAppWithTheme(),
    // );
  }
}
