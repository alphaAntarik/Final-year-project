import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:trying_api_with_sending_data/apiFetch.dart';

import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "New app",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Colors.white,
        fontFamily: 'LeagueGothic',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            subtitle1: TextStyle(
              fontSize: 17,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.normal,
            )),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        SplashScreen.SplashScreenRoute: (context) => SplashScreen(),
        ApiFetch.ApiFetchRoute: (context) => ApiFetch()
      },
    );
  }
}
