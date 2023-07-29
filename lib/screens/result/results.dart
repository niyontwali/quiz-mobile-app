import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/result/summary.dart';

class Result extends StatelessWidget {
  const Result(this.onRestart, this.selectedAnswers, {super.key});
  final void Function() onRestart;
  final List<String> selectedAnswers;

  List<Map<String, Object>> get results {
    List<Map<String, Object>> results = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      results.add({
        "question_no": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "selected_answers": selectedAnswers[i]
      });
    }
    return results;
  }

  @override
  Widget build(BuildContext context) {
    final numberOfQuestions = questions.length;
    final numberOfCorrectQuestions = results.where((data) {
      return data["selected_answers"] == data["correct_answer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numberOfCorrectQuestions out of $numberOfQuestions questions correctly",
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Summary(results),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: onRestart,
              icon: const Icon(
                Icons.refresh,
                color: Color.fromARGB(255, 249, 237, 251),
              ),
              label: const Text(
                "Restart Quiz",
                style: TextStyle(
                  color: Color.fromARGB(255, 249, 237, 251),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
