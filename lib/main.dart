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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
  List<Widget> icons = <Widget>[];

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

  String suroo;
  @override
  void initState() {
    suroo = SuroonunMeesi().suroonuAlipkel();
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
            Column(
              children: [
                CustomButton(
                  text: 'Туура',
                  tus: const Color(0xff4EA052),
                  onPressed: () {
                    setState(() {});
                    icons.add(tuuraIkonka);
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                CustomButton(
                  text: 'Ката',
                  tus: const Color(0xffF54335),
                  onPressed: () {
                    setState(() {
                      icons.add(kataIkonka);
                    });
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: icons,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
