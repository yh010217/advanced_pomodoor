import 'package:flutter/material.dart';
import 'package:pomodoro_list/screens/main_screen/bottom_section/main_bottom.dart';
import 'package:pomodoro_list/screens/main_screen/mid_section/main_mid.dart';
import 'package:pomodoro_list/screens/main_screen/top_section/main_top_infos.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 6.0,
          vertical: 10,
        ),
        child: Column(
          // padding 은 형식상 준거고, 사실상 메인 스크린은 이거지
          children: [
            MainTopInfos(),
            SizedBox(
              height: 20,
            ),
            MainMid(),
            SizedBox(
              height: 20,
            ),
            MainBottom(),
          ],
        ),
      ),
    );
  }
}
