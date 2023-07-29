import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/onboarding.dart';
import 'package:quiz_app/screens/questions.dart';
import 'package:quiz_app/screens/result/results.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  List<String> selectedAnswers = [];
  var index = 1;

  void switchScreen() {
    setState(() {
      index = 2;
    });
  }

  void onRestart() {
    selectedAnswers = [];
    setState(() {
      index = 2;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        index = 3;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeWidget = Onboarding(switchScreen);

    if (index == 2) {
      activeWidget = Questions(chooseAnswer);
    }
    if (index == 3) {
      activeWidget = Result(onRestart, selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 133, 77, 159),
                Color.fromARGB(255, 203, 132, 236),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: activeWidget,
        ),
      ),
    );
  }
}
