import 'package:flutter/material.dart';
import 'package:quizzy_tfe/screens/game_session_screen.dart';
import 'package:quizzy_tfe/screens/home_screen.dart';

class ResultsScreen extends StatefulWidget {
  final int score;
  const ResultsScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Félicitations !",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "Ton résultat : ",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}/5",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GameSessionScreen(),
                  ));
            },
            shape: StadiumBorder(),
            color: Colors.white,
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Recommencer le quiz",
              style: TextStyle(color: Colors.deepPurpleAccent),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            shape: StadiumBorder(),
            color: Colors.white,
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Retourner à l'accueil",
              style: TextStyle(color: Colors.deepPurpleAccent),
            ),
          ),
        ],
      ),
    );
  }
}
