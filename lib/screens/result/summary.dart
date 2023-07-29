import 'package:flutter/material.dart';
import 'package:quiz_app/screens/result/summary_item.dart';

class Summary extends StatelessWidget {
  const Summary(this.results, {super.key});

  final List<Map<String, Object>> results;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: results.map((result) => SummaryItem(result)).toList(),
        ),
      ),
    );
  }
}
