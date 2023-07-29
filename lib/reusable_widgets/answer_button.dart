import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.text,
    required this.onTap,
    super.key,
  });

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
        backgroundColor: const Color.fromARGB(255, 133, 77, 159),
        foregroundColor: Colors.white70,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      onPressed: onTap,
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
