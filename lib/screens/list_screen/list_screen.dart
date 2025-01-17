import 'package:flutter/material.dart';
import 'package:pomodoro_list/screens/scaffold/main_app_bar.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(titleText: 'Pomodoro-Goals'),
      body: Center(
        child: Text('hi'),
      ),
    );
  }
}
