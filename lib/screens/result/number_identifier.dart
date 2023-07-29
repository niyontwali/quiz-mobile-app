import 'package:flutter/material.dart';

class NumberIdentifier extends StatelessWidget {
  const NumberIdentifier(
    this.result, {
    required this.isCorrectAnswer,
    super.key,
  });

  final Map<String, Object> result;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 46, 144, 76)
            : const Color.fromARGB(255, 152, 56, 187),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        ((result['question_no'] as int) + 1).toString(),
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
