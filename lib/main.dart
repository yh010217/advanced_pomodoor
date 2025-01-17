import 'package:flutter/material.dart';
import 'package:pomodoro_list/screens/main_screen/main_screen.dart';
import 'package:pomodoro_list/screens/scaffold/main_app_bar.dart';
import 'package:pomodoro_list/screens/scaffold/main_bottom_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          shadowColor: Colors.black.withAlpha(120),
          elevation: 5,
          centerTitle: true,
        ),
      ),
      home: Scaffold(
        appBar: MainAppBar(
          titleText: 'POMODORO',
        ),
        body: MainScreen(),
        bottomNavigationBar: CustomBottomAppBar(),
      ),
    );
  }
}
