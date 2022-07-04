import 'dart:developer';

import 'package:quiz_application/models/suroo_modeli.dart';

class SuroonunMeesi {
  int _index = 0;
  List<SurooModeli> questionsAnswers = <SurooModeli>[
    SurooModeli(suroo: 'Kyrgyzstan Kytaida jaigashkan', joop: false), // 0
    SurooModeli(suroo: 'Kyrgyzstan egemenduu olko', joop: true), // 1
    SurooModeli(suroo: 'Batken borbor shaar', joop: false), // 2
  ];

  String getQuestion() {
    if (_index < questionsAnswers.length) {
      return questionsAnswers[_index].suroo;
    } else {
      return 'Buttu';
    }
  }

  bool getAnswer() {
    return questionsAnswers[_index].joop;
  }

  void getNext() {
    _index++;
  }

  // reset
  void reset() {
    _index = 0;
  }
}

SuroonunMeesi questionBrain = SuroonunMeesi();
