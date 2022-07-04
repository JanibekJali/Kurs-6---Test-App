import 'package:quiz_application/data/local_data/question_local_data.dart';

class QuizServices {
  int _index = 0;
  String getQuestion() {
    if (_index < QuestionLocalData.questionsAnswers.length) {
      return QuestionLocalData.questionsAnswers[_index].suroo;
    } else {
      return 'Buttu';
    }
  }

  bool getAnswer() {
    return QuestionLocalData.questionsAnswers[_index].joop;
  }

  bool getAnswer2() {
    return QuestionLocalData.questionsAnswers[_index].joop;
  }

  void getNext() {
    _index++;
  }

  // reset
  void reset() {
    _index = 0;
  }
}

final QuizServices quizServices = QuizServices();
