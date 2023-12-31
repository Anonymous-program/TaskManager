import 'package:flutter/material.dart';
class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key,
    required this.number,
    required this.title,
  });
  final int number;
  final String title;
  get poppins => null;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              '$number',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(title,style: TextStyle(
              fontFamily: poppins,
            ),),
          ],
        ),
      ),
    );
  }
}