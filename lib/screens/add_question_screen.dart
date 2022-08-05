import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quizzy_tfe/models/question_model.dart';

import 'home_screen.dart';

class AddQuestionScreen extends StatefulWidget {
  const AddQuestionScreen({Key? key}) : super(key: key);

  @override
  _AddQuestionScreenState createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  final _formKey = GlobalKey<FormState>();

  // questiontitlecontroller
  final TextEditingController questionTitleEditingController =
      new TextEditingController();

  final TextEditingController option1EditingController =
      new TextEditingController();

  final TextEditingController option2EditingController =
      new TextEditingController();

  final TextEditingController option3EditingController =
      new TextEditingController();

  final TextEditingController option4EditingController =
      new TextEditingController();

  final TextEditingController difficultyLevelEditingController =
      new TextEditingController();

  //firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //question field
    final questionField = TextFormField(
      autofocus: false,
      controller: questionTitleEditingController,
      keyboardType: TextInputType.text,
      //validator () {},
      onSaved: (value) {
        questionTitleEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Question",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    //options field
    final option1Field = TextFormField(
      autofocus: false,
      controller: option1EditingController,
      keyboardType: TextInputType.text,
      //validator () {},
      onSaved: (value) {
        option1EditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Option 1 (Réponse correcte)",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    final option2Field = TextFormField(
      autofocus: false,
      controller: option2EditingController,
      keyboardType: TextInputType.text,
      //validator () {},
      onSaved: (value) {
        option2EditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Option 2",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    final option3Field = TextFormField(
      autofocus: false,
      controller: option3EditingController,
      keyboardType: TextInputType.text,
      //validator () {},
      onSaved: (value) {
        option3EditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Option 3",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    final option4Field = TextFormField(
      autofocus: false,
      controller: option4EditingController,
      keyboardType: TextInputType.text,
      //validator () {},
      onSaved: (value) {
        option4EditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Option 4",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    //difficulty level field
    final difficultyLevelField = TextFormField(
      autofocus: false,
      controller: difficultyLevelEditingController,
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Entrez un niveau de difficulté");
        }
        /*if () {
          return ("Le niveau de difficulté doit être compris entre 1 et 10");
        }*/
      },
      onSaved: (value) {
        difficultyLevelEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Niveau de difficulté",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    //add question material
    final addQuestionButton = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            //postDetailsToFirestore();
          },
          child: Text(
            "Ajouter la question",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold),
          ),
        ));

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      height: 180,
                      child: Image.asset(
                        "assets/Logo/Logo.png",
                        fit: BoxFit.contain,
                      )),
                  SizedBox(height: 80),
                  questionField,
                  SizedBox(height: 45),
                  option1Field,
                  SizedBox(height: 20),
                  option2Field,
                  SizedBox(height: 20),
                  option3Field,
                  SizedBox(height: 20),
                  option4Field,
                  SizedBox(height: 20),
                  difficultyLevelField,
                  SizedBox(height: 30),
                  addQuestionButton,
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /*void postQuestion(String questionTitle, String option1, String option2,
      String option3, String option4, String difficultyLevel) async {
    if (_formKey.currentState!.validate()) {
      await _auth.then((value) => {postDetailsToFirestore()}).catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirestore() async {
    //calling firestore
    //calling question model
    //sedding these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    QuestionModel questionModel = QuestionModel();

    // writing all the values

    questionModel.questionTitle = questionTitleEditingController.text;
    questionModel.option1 = option1EditingController.text;
    questionModel.option2 = option2EditingController.text;
    questionModel.option3 = option3EditingController.text;
    questionModel.option4 = option4EditingController.text;
    questionModel.difficultyLevel =
        difficultyLevelEditingController.text as int?;

    await firebaseFirestore
        .collection("questions")
        .doc(questionModel.qid)
        .set(questionModel.toMap());
    Fluttertoast.showToast(msg: "question ajoutée avec succès");

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
        (route) => false);
  }*/
}
