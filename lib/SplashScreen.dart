import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:trying_api_with_sending_data/apiFetch.dart';

class SplashScreen extends StatefulWidget {
  static String SplashScreenRoute = "/SplashScreen";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // void initState() {
  //   super.initState();
  //   startTimer();
  // }

  // startTimer() {
  //   var duration = Duration(seconds: 5);
  //   return Timer(duration, () {
  //     Navigator.pushReplacement(context,
  //         MaterialPageRoute(builder: (BuildContext context) => ApiFetch()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Splash screen")),
      body: Center(
        // decoration: BoxDecoration(
        //   //borderRadius: BorderRadius.circular(15),
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.lightBlue.withOpacity(0.3),
        //       Colors.greenAccent,
        //       Colors.purpleAccent
        //     ],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //   ),
        // ),
        //color: Theme.of(context).canvasColor,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(15),
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.grey.withOpacity(0.7),
        //       Colors.black12,
        //     ],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //   ),
        // ),
        // alignment: Alignment.center,
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Container(
        //       width: 200,
        //       height: 150,
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(15),
        //       ),
        //       child: Lottie.network(
        //           'https://assets6.lottiefiles.com/packages/lf20_8ywcoffy.json',
        //           fit: BoxFit.contain),
        //     ),
        //     SizedBox(
        //       height: 40,
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(10),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(15),
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.lightBlue.withOpacity(0.3),
        //       Colors.greenAccent,
        //     ],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //   ),
        // ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text(
                  //   "Career",
                  //   style: TextStyle(
                  //       fontSize: 89,
                  //       fontFamily: 'LeagueGothic',
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.cyanAccent),
                  // ),

                  StrokeText(
                    text: "Career",
                    textStyle:
                        TextStyle(fontSize: 99, color: Colors.transparent),
                    strokeColor: Colors.pink,
                    strokeWidth: 2,
                  ),
                  Text(
                    "Predictor",
                    style: TextStyle(
                        fontSize: 69,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
                  ),
                ],
              ),
            ),
            Container(
              width: 157,
              height: 150,
              child: Lottie.asset('assets/99349-girl-with-books.json',
                  fit: BoxFit.contain),
            )
          ],
        ),
      ),
      // SizedBox(
      //   height: 40,
      // ),
      // Container(
      //   alignment: Alignment.centerRight,
      //   width: 200,
      //   height: 150,
      //   // decoration: BoxDecoration(
      //   //   borderRadius: BorderRadius.circular(15),
      //   //   gradient: LinearGradient(
      //   //     colors: [
      //   //       Colors.pink.withOpacity(0.7),
      //   //       Colors.black87,
      //   //     ],
      //   //     begin: Alignment.topLeft,
      //   //     end: Alignment.bottomRight,
      //   //   ),
      //   // ),
      //   child: Lottie.network(
      //       'https://assets6.lottiefiles.com/packages/lf20_fvlxj85e.json',
      //       fit: BoxFit.contain),
      // ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
