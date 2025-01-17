import 'package:flutter/material.dart';

class MainAppBar extends AppBar {
  final String titleText;
  MainAppBar({super.key, required this.titleText});

  @override
  State<MainAppBar> createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.titleText,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
    );
  }
}
