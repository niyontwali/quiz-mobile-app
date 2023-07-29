import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/screens/result/number_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.result, {super.key});

  final Map<String, Object> result;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        result["selected_answers"] == result["correct_answer"];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NumberIdentifier(isCorrectAnswer: isCorrectAnswer, result),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  result['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  result['selected_answers'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 2, 76, 24),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  result['correct_answer'] as String,
                  style: TextStyle(
                      color: isCorrectAnswer
                          ? const Color.fromARGB(255, 2, 76, 24)
                          : const Color.fromARGB(255, 91, 13, 120),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
