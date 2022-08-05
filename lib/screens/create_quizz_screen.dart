import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quizzy_tfe/screens/home_screen.dart';

class CreateQuizzScreen extends StatefulWidget {
  const CreateQuizzScreen({Key? key}) : super(key: key);

  @override
  _CreateQuizzScreenState createState() => _CreateQuizzScreenState();
}

class _CreateQuizzScreenState extends State<CreateQuizzScreen> {
  //form key
  final _formkey = GlobalKey<FormState>();

  //editing controler
  final TextEditingController titleQuizzEditingController =
      new TextEditingController();

  final TextEditingController questionNumberEditingController =
      new TextEditingController();

  final TextEditingController difficultyLevelEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Title quizz field
    final titleQuizzField = TextFormField(
      autofocus: false,
      controller: titleQuizzEditingController,
      keyboardType: TextInputType.name,
      //validator: () {}

      onSaved: (value) {
        titleQuizzEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Titre du quizz",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    // question Number field
    final questionNumberField = TextFormField(
      autofocus: false,
      controller: questionNumberEditingController,
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Définisser le nombre de question");
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
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Nombre de questions",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    //diifculty level field
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

    //Add Button material
    final addQuizzButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            addQuizz(titleQuizzEditingController.text);
          },
          child: Text(
            "Ajouter un quizz",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold),
          )),
    );

    final privacyRadioButton = Material();

    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.deepPurpleAccent,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                          height: 160,
                          child: Image.asset("assets/Logo/Logo.png",
                              fit: BoxFit.contain)),
                      const SizedBox(height: 45),
                      titleQuizzField,
                      const SizedBox(height: 30),
                      questionNumberField,
                      const SizedBox(height: 30),
                      difficultyLevelField,
                      const SizedBox(height: 30),
                      addQuizzButton,
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  //add quizz function
  void addQuizz(String titleQuizz) async {
    if (_formkey.currentState!.validate()) {
      Fluttertoast.showToast(msg: "Quizz ajouté");
    }
  }
}
