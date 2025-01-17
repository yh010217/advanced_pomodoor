import 'package:flutter/material.dart';

class MainBottomListUnit extends StatelessWidget {
  final String status, title, goalTime, finalTime;
  const MainBottomListUnit({
    super.key,
    required this.status,
    required this.title,
    required this.goalTime,
    required this.finalTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 0,
          child: SizedBox(
            width: 80,
            child: Center(
              child: Text(
                status,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 0,
          child: SizedBox(
            width: 80,
            child: Center(
              child: Text(
                goalTime,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 0,
          child: SizedBox(
            width: 80,
            child: Center(
              child: Text(
                finalTime,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
