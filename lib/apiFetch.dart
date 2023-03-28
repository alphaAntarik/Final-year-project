import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';

import 'album.dart';

Future<Album> createAlbum(
    int Database_Fundamentals,
    int Computer_Architecture,
    int Distributed_Computing_Systems,
    int Cyber_Security,
    int Networking,
    int Development,
    int Programming_Skills,
    int Project_Management,
    int Computer_Forensics_Fundamentals,
    int Technical_Communication,
    int AI_ML,
    int Software_Engineering,
    int Business_Analysis,
    int Communication_skills,
    int Data_Science,
    int Troubleshooting_skills,
    int Graphics_Designing) async {
  final http.Response response = await http.get(
    Uri.parse(
        'https://b91f-45-112-68-24.in.ngrok.io/home?Database%20Fundamentals=$Database_Fundamentals&Computer%20Architecture=$Computer_Architecture&Distributed%20Computing%20Systems=$Distributed_Computing_Systems&Cyber%20Security=$Cyber_Security&Networking=$Networking&Development=$Development&Programming%20Skills=$Programming_Skills&Project%20Management=$Project_Management&Computer%20Forensics%20Fundamentals=$Computer_Forensics_Fundamentals&Technical%20Communication=$Communication_skills&AI%20ML=$AI_ML&Software%20Engineering=$Software_Engineering&Business%20Analysis=$Business_Analysis&Communication%20skills=$Communication_skills&Data%20Science=$Data_Science&Troubleshooting%20skills=$Troubleshooting_skills&Graphics%20Designing=$Graphics_Designing'),
  );

  if (response.statusCode == 200) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}

class ApiFetch extends StatefulWidget {


  //final String username;
  static String ApiFetchRoute = '/apiFetch';

  // const ApiFetch();

  //const ApiFetch(this.username);
  @override
  State<ApiFetch> createState() => _ApiFetchState();
}

class _ApiFetchState extends State<ApiFetch> {
  bool _showButton = false;


  TextEditingController _controller1;
  TextEditingController _controller2;
  TextEditingController _controller3;
  TextEditingController _controller4;
  TextEditingController _controller5;
  TextEditingController _controller6;
  TextEditingController _controller7;
  TextEditingController _controller8;
  TextEditingController _controller9;
  TextEditingController _controller10;
  TextEditingController _controller11;
  TextEditingController _controller12;
  TextEditingController _controller13;
  TextEditingController _controller14;
  TextEditingController _controller15;
  TextEditingController _controller16;
  TextEditingController _controller17;

  @override
  void initState() {
    super.initState();
    _controller1 = TextEditingController();
    _controller2 = TextEditingController();
    _controller3 = TextEditingController();
    _controller4 = TextEditingController();
    _controller5 = TextEditingController();
    _controller6 = TextEditingController();
    _controller7 = TextEditingController();
    _controller8 = TextEditingController();
    _controller9 = TextEditingController();
    _controller10 = TextEditingController();
    _controller11 = TextEditingController();
    _controller12 = TextEditingController();
    _controller13 = TextEditingController();
    _controller14 = TextEditingController();
    _controller15 = TextEditingController();
    _controller16 = TextEditingController();
    _controller17 = TextEditingController();

    _controller1.text = '0';
    _controller2.text = '0';
    _controller3.text = '0';
    _controller4.text = '0';
    _controller5.text = '0';
    _controller6.text = '0';
    _controller7.text = '0';
    _controller8.text = '0';
    _controller9.text = '0';
    _controller10.text = '0';
    _controller11.text = '0';
    _controller12.text = '0';
    _controller13.text = '0';
    _controller14.text = '0';
    _controller15.text = '0';
    _controller16.text = '0';
    _controller17.text = '0';

    Timer(Duration(seconds: 15), () {
      setState(() {
        _showButton = true;
      });
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    _controller7.dispose();
    _controller8.dispose();
    _controller9.dispose();
    _controller10.dispose();
    _controller11.dispose();
    _controller12.dispose();
    _controller13.dispose();
    _controller14.dispose();
    _controller15.dispose();
    _controller16.dispose();
    _controller17.dispose();
    super.dispose();
  }

  Future<Album> _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Career Predictor',
          style: TextStyle(
              color: Colors.pink,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        // ignore: unnecessary_null_comparison
        child: (_futureAlbum == null)
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //             Text(
                    //   "${widget.name}, let us know",
                    //
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontStyle: FontStyle.normal,
                    //       fontWeight: FontWeight.w700),
                    // ),
                   // SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Database Fundamentals',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller2,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Computer architecture',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller3,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Distributed Computing Systems',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller4,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Cyber Security',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller5,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Networking',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller6,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Development',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller7,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Programming Skills',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller8,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Project Management',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller9,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Cyber law and ethics',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller10,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Technical Communication',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller11,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'AI ML',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller12,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Software Engineering',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller13,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Principles of management',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller14,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Communication skills',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller15,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Data_Science',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller16,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Troubleshooting skills',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller17,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Computer Graphics',
                            hintText: 'out of 10'),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.pink)))),
                      child: const Text(
                        'check it',
                        selectionColor: Colors.amber,
                      ),
                      onPressed: () async {
                        setState(() {
                          _futureAlbum = createAlbum(
                            int.parse(_controller1.text),
                            int.parse(_controller2.text),
                            int.parse(_controller3.text),
                            int.parse(_controller4.text),
                            int.parse(_controller5.text),
                            int.parse(_controller6.text),
                            int.parse(_controller7.text),
                            int.parse(_controller8.text),
                            int.parse(_controller9.text),
                            int.parse(_controller10.text),
                            int.parse(_controller11.text),
                            int.parse(_controller12.text),
                            int.parse(_controller13.text),
                            int.parse(_controller14.text),
                            int.parse(_controller15.text),
                            int.parse(_controller16.text),
                            int.parse(_controller17.text),
                          );
                        });
                      },
                    ),
                  ],
                ),
              )
            : Center(
                child: FutureBuilder<Album>(
                  future: _futureAlbum,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Center(
                        child: _showButton? Stack(
                          children: [
                            Lottie.asset('assets/132608-congrats-summer.json',
                                repeat: false),
                            Align(
                              alignment: Alignment.center,
                              child:
                              Text(
                                (snapshot.data.placement == 'Application Support Engineer')?"Software test Engineer":
                                (snapshot.data.placement == 'Software tester')?"Software test Engineer":
                                (snapshot.data.placement == 'Cyber Security Specialist')?"Cyber Security Analyst":
                                (snapshot.data.placement == 'Information Security Specialist')?"Cyber Security Analyst":
                                (snapshot.data.placement == 'Technical Writer')?"Content Writer":
                                (snapshot.data.placement == 'Customer Service Executive')?"BPO":
                                (snapshot.data.placement == 'Helpdesk Engineer')?"KPO":
                                (snapshot.data.placement == 'API Specialist')?"Database Administrator,"
                                    "Software Developer":

                                "${snapshot.data.placement}",
                                style: TextStyle(fontSize: 44),
                              ),
                            ),InkWell(
                              onTap: () {
                                FirebaseAuth.instance.signOut();
                              },
                              child: Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.logout,
                                  color: Colors.black,
                                ),
                              ),
                            ),

                          ],
                        ):Stack(
                          children: [
                            Lottie.asset('assets/132608-congrats-summer.json',
                                repeat: false),
                            Align(
                              alignment: Alignment.center,
                              child:
                              Text(
                                (snapshot.data.placement == 'Application Support Engineer')?"Software test Engineer":
                                (snapshot.data.placement == 'Software tester')?"Software test Engineer":
                                (snapshot.data.placement == 'Cyber Security Specialist')?"Cyber Security Analyst":
                                (snapshot.data.placement == 'Information Security Specialist')?"Cyber Security Analyst":
                                (snapshot.data.placement == 'Technical Writer')?"Content Writer":
                                (snapshot.data.placement == 'Customer Service Executive')?"BPO":
                                (snapshot.data.placement == 'Helpdesk Engineer')?"KPO":
                                (snapshot.data.placement == 'API Specialist')?"Database Administrator,"
                                    "Software Developer":

                                "${snapshot.data.placement}",
                                style: TextStyle(fontSize: 44),
                              ),
                            )

                          ],
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Lottie.network(
                          'https://assets10.lottiefiles.com/packages/lf20_kjixtysj.json',
                          fit: BoxFit.cover);
                    }

                    return Center(
                        child: Lottie.asset('assets/97171-loading-plane.json',
                            width: 100, height: 100, fit: BoxFit.cover));
                  },
                ),
              ),
      ),
    );
  }
}
