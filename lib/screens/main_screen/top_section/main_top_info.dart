import 'package:flutter/material.dart';

class MainTopInfo extends StatelessWidget {
  final String title, content;
  const MainTopInfo({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2, -2),
                blurRadius: 6,
                spreadRadius: -2,
              ),
            ]),
        child: Center(
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(content, style: TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
