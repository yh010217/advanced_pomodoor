import 'package:flutter/material.dart';
import 'package:pomodoro_list/screens/main_screen/top_section/main_top_info.dart';

class MainTopInfos extends StatelessWidget {
  const MainTopInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 6,
      children: [
        MainTopInfo(
          title: 'Due to',
          content: '01-16 14:30',
        ),
        MainTopInfo(
          title: 'Goals',
          content: '5 / 8',
        ),
        MainTopInfo(
          title: 'Time',
          content: '02:18:46',
        ),
      ],
    );
  }
}
