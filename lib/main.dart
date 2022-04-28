import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_application/suroo_modeli.dart';
import 'package:quiz_application/suroonun_meesi.dart';

import 'custon_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  String suroo;
  bool buttubuIndicator;

  Widget tuuraIkonka = const Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: FaIcon(
        FontAwesomeIcons.check,
        color: Color(0xff4EA052),
        size: 45.0,
      ));

  Widget kataIkonka = const Padding(
    padding: EdgeInsets.only(left: 20.0),
    child: FaIcon(
      FontAwesomeIcons.xmark,
      color: Color(0xffF54335),
      size: 45.0,
    ),
  );
  //userAnswered
  List<Widget> ikonkalar = <Widget>[];
  void koldonuuchuJoopBerdi(bool koldonuuchununJoobu) {
    bool tuuraJooptor = suroonunMeesi.jooptuAlipKel();
    if (koldonuuchununJoobu == tuuraJooptor) {
      ikonkalar.add(tuuraIkonka);
    } else {
      ikonkalar.add(kataIkonka);
    }
    suroonunMeesi.suroonuOtkoz();
    suroo = suroonunMeesi.suroonuAlipkel();
    if (suroo == 'Buttu') {
      buttubuIndicator = true;
    }
    setState(() {});
  }

  @override
  void initState() {
    suroo = suroonunMeesi.suroonuAlipkel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212121),
      appBar: AppBar(
        title: const Text('Тапшырма 07'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25.0,
            ),
            Text(
              suroo ?? 'Suroo bosh',
              style: const TextStyle(fontSize: 35.0, color: Colors.white),
            ),
            if (buttubuIndicator == true)
              CustomButton(
                text: 'Kairadan Bashta',
                onPressed: () {
                  suroonunMeesi.kairaBashta();
                  suroo = suroonunMeesi.suroonuAlipkel();
                  buttubuIndicator = false;
                  ikonkalar = [];
                  setState(() {});
                },
              )
            else
              Column(
                children: [
                  CustomButton(
                    text: 'Туура',
                    tus: const Color(0xff4EA052),
                    onPressed: () {
                      koldonuuchuJoopBerdi(true);
                    },
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  CustomButton(
                    text: 'Ката',
                    tus: const Color(0xffF54335),
                    onPressed: () {
                      koldonuuchuJoopBerdi(false);
                    },
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    children: ikonkalar,
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
