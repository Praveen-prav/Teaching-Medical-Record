import 'package:flutter/material.dart';
import 'patientClientData.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwdController = TextEditingController();

  String Email = '';
  String Passwd = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/goatBg2.png'), // Replace with your image asset
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.8), // Adjust the opacity as needed
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    'EVMR',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Electronic Veterinary Medical records',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        labelText: 'Email',
                        border: UnderlineInputBorder()),
                    controller: emailController,
                    onChanged: (String email) async {
                      Email = email;
                    },
                  ),
                  SizedBox(height: 8.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      labelText: 'Password',
                      border: UnderlineInputBorder(),
                    ),
                    controller: passwdController,
                    onChanged: (String passwd) async {
                      Passwd = passwd;
                    },
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {

                      Email == '' || Passwd == '' ? showEnterLoginSnackBar(context) :
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PatientDataPage()));
                      // Add your login logic here
                    },
                    child: Text('Login'),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


void showEnterLoginSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text('Please enter Email or Password'),
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
    ),
  );
}
