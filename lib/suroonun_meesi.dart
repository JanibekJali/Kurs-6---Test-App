import 'dart:developer';

import 'package:quiz_application/suroo_modeli.dart';

class SuroonunMeesi {
  int _index = 0;
  List<SurooModeli> suroolorJanaJooptar = <SurooModeli>[
    SurooModeli(suroo: 'Kyrgyzstan Kytaida jaigashkan', joop: false), // 0
    SurooModeli(suroo: 'Kyrgyzstan egemenduu olko', joop: true), // 1
    SurooModeli(suroo: 'Batken borbor shaar', joop: false), // 2
  ];

  String suroonuAlipkel() {
    if (_index < suroolorJanaJooptar.length) {
      return suroolorJanaJooptar[_index].suroo;
    } else {
      return 'Buttu';
    }
  }

  bool jooptuAlipKel() {
    return suroolorJanaJooptar[_index].joop;
  }

  void suroonuOtkoz() {
    _index++;
  }

  // reset
  void kairaBashta() {
    _index = 0;
  }
}

SuroonunMeesi suroonunMeesi = SuroonunMeesi();
