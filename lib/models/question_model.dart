/*class QuestionModel {
  String? qid;
  String? questionTitle;
  String? option1;
  String? option2;
  String? option3;
  String? option4;
  int? difficultyLevel;

  QuestionModel({
    this.qid,
    this.questionTitle,
    this.option1,
    this.option2,
    this.option3,
    this.option4,
    this.difficultyLevel,
  });

  //receiving data rom server
  factory QuestionModel.fromMap(map) {
    return QuestionModel(
        qid: map['qid'],
        questionTitle: map['questionTitle'],
        option1: map['option1'],
        option2: map['option2'],
        option3: map['option3'],
        option4: map['option4'],
        difficultyLevel: map['difficultyLevel']);
  }

  //sending datafrom server
  Map<String, dynamic> toMap() {
    return {
      'qid': qid,
      'questionTitle': questionTitle,
      'option1': option1,
      'option2': option2,
      'option3': option3,
      'option4': option4,
      'difficultyLevel': difficultyLevel,
    };
  }
}*/

class QuestionModel {
  String? question;
  Map<String, bool>? answer;

  QuestionModel(this.question, this.answer);
}
