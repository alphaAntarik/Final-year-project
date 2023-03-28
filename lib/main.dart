import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:trying_api_with_sending_data/apiFetch.dart';

import 'SplashScreen.dart';
import 'auth_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showAppFetch = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      setState(() {
        _showAppFetch = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
      // Initialize FlutterFire:
        future: _initialization,
        builder: (context, appSnapshot) {

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
      //initialRoute: '/',
      routes: {
       // '/': (context) => SplashScreen(),
        //SplashScreen.SplashScreenRoute: (context) => SplashScreen(),
        //ApiFetch.ApiFetchRoute: (context) => ApiFetch()
      },
      //home: appSnapshot.connectionState != ConnectionState.done &&
         home:  _showAppFetch
          ? SplashScreen()
          : StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (ctx, userSnapshot) {
            if (userSnapshot.connectionState ==
                ConnectionState.waiting) {
              return SplashScreen();
            }
            if (userSnapshot.hasData) {

              //final chatDocs = ;

              //return ListView.builder(
              //     itemCount: chatDocs.length,
              //     reverse: true,
              //     itemBuilder: (ctx, index) => MessageBubble(
              //       chatDocs[index].data()['text'],
              //       chatDocs[index].data()['username'],
              //       chatDocs[index].data()['userImage'],
              //       chatDocs[index].data()['userid'] == user.uid,
              //       key: ValueKey(chatDocs[index].id),  )
              // );

              return ApiFetch();
            }
            return AuthScreen();
          }),
    );
  });
}
}
