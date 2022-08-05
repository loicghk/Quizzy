import '../models/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "Quelle est la capitale de la Belgique",
    {
      "Bruxelles": true,
      "Madrid": false,
      "Lisbonne": false,
      "Paris": false,
    },
  ),
  QuestionModel(
    "Qui est le frère de Mario",
    {
      "Wario": false,
      "Luigi": true,
      "Waluigi": false,
      "Yoshi": false,
    },
  ),
  QuestionModel(
    "Combien y a-t-il de tortues ninja dans le manga original ?",
    {
      "4": true,
      "5": false,
      "6": false,
      "7": false,
    },
  ),
  QuestionModel(
    "Dans quel sport s'illustre Tom Brady",
    {
      "Football américain": true,
      "Natation": false,
      "Golf": false,
      "Tennis": false,
    },
  ),
  QuestionModel(
    "Comment s'appelle le créateur du manga One Piece ?",
    {
      "Masashi Kishimoto": false,
      "Ken Wakui": false,
      "Sui Ishida": false,
      "Eichiro Oda": true,
    },
  )
];
