import 'package:flutter/material.dart';
import 'package:quizzy_tfe/screens/home_screen.dart';
import 'package:quizzy_tfe/screens/login_screen.dart';
import 'package:quizzy_tfe/screens/registration_screen.dart';

class ReceptionScreen extends StatefulWidget {
  const ReceptionScreen({Key? key}) : super(key: key);

  @override
  _ReceptionScreenState createState() => _ReceptionScreenState();
}

class _ReceptionScreenState extends State<ReceptionScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //SignIn button material
    final loginButtton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Text(
            "Se connecter",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold),
          )),
    );

    //Sign up button material
    final registerButtton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: ((context) => RegistrationScreen())));
          },
          child: Text(
            "S'inscrire",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.deepPurpleAccent,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                          height: 200,
                          child: Image.asset(
                            "assets/Logo/Logo.png",
                            fit: BoxFit.contain,
                          )),
                      SizedBox(height: 45),
                      loginButtton,
                      SizedBox(height: 25),
                      registerButtton,
                      SizedBox(height: 35),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
