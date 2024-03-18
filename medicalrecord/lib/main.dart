import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'patientClientData.dart';
import 'patientClientHistory.dart';
import 'soapDetailsPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/patientData': (context) => PatientDataPage(),
        '/patientHistory' : (context) => PatientHistoryPage(),
        '/soapDetails' : (context) => SoapDetailsPage()
      },
    );
  }
}
