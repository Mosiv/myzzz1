import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';

void main() => runApp(MyApp());

Color primaryColor = Color.fromARGB(255, 58, 149, 255);
ThemeData appThemeDark = ThemeData.dark().copyWith(
    primaryColor: Colors.white, //текст
    accentColor: primaryColor, //кнопка сохранить
    textSelectionColor: primaryColor,
    textSelectionHandleColor: primaryColor);

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData theme = appThemeDark;

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delnik',
      theme: theme,
      home: SplashScreen(
        'assets/splash.flr',
        MyHomePage(title: 'Flutter'),
        startAnimation: 'intro',
        backgroundColor: Color(0xff181818),
      ),
    );
  }
}