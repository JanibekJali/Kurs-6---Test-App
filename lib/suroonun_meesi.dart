import 'package:quiz_application/suroo_modeli.dart';

class SuroonunMeesi {
  int _index = 0;
  List<SurooModeli> suroolorJanaJooptar = <SurooModeli>[
    SurooModeli(suroo: 'Kyrgyzstan Kytaida jaigashkan', joop: false),
    SurooModeli(suroo: 'Kyrgyzstan egemenduu olko', joop: true),
    SurooModeli(suroo: 'Batken borbor shaar', joop: false),
  ];

  String suroonuAlipkel() {
    return suroolorJanaJooptar[_index].suroo;
  }
}
