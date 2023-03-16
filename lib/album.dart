// class Album {
//   final String Database_Fundamentals;
//   final String Computer_Architecture;
//   final String Distributed_Computing_Systems;
//   final String Cyber_Security;
//   final String Networking;
//   final String Development;
//   final String Programming_Skills;
//   final String Project_Management;
//   final String Computer_Forensics_Fundamentals;
//   final String Technical_Communication;
//   final String AI_ML;
//   final String Software_Engineering;
//   final String Business_Analysis;
//   final String Communication_skills;
//   final String Data_Science;
//   final String Troubleshooting_skills;
//   final String Graphics_Designing;

//   Album(
//       {this.Database_Fundamentals,
//       this.Computer_Architecture,
//       this.Distributed_Computing_Systems,
//       this.Cyber_Security,
//       this.Networking,
//       this.Development,
//       this.Programming_Skills,
//       this.Project_Management,
//       this.Computer_Forensics_Fundamentals,
//       this.Technical_Communication,
//       this.AI_ML,
//       this.Software_Engineering,
//       this.Business_Analysis,
//       this.Communication_skills,
//       this.Data_Science,
//       this.Troubleshooting_skills,
//       this.Graphics_Designing});

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       Database_Fundamentals: json['Database Fundamentals'],
//       Computer_Architecture: json['Computer Architecture'],
//       Distributed_Computing_Systems: json['Distributed Computing Systems'],
//       Cyber_Security: json['Cyber Security'],
//       Networking: json['Networking'],
//       Development: json['Development'],
//       Programming_Skills: json['Programming Skills'],
//       Project_Management: json['Project Management'],
//       Computer_Forensics_Fundamentals: json['Computer Forensics Fundamentals'],
//       Technical_Communication: json['Technical Communication'],
//       AI_ML: json['AI ML'],
//       Software_Engineering: json['Software_Engineering'],
//       Business_Analysis: json['Business_Analysis'],
//       Communication_skills: json['Communication_skills'],
//       Data_Science: json['Data_Science'],
//       Troubleshooting_skills: json['Troubleshooting_skills'],
//       Graphics_Designing: json['Graphics_Designing'],
//     );
//   }
// }
class Album {
  final String placement;

  Album({this.placement});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      placement: json['placement'],
    );
  }
}
