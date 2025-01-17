import 'package:flutter/material.dart';
import 'package:pomodoro_list/screens/list_screen/list_screen.dart';
import 'package:pomodoro_list/screens/main_screen/bottom_section/main_bottom_list_unit.dart';

class MainBottom extends StatelessWidget {
  const MainBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  fullscreenDialog: true,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    // var begin = const Offset(1.0, 0.0);
                    var begin = const Offset(0.0, 1.0);
                    var end = Offset.zero;
                    var curve = Curves.ease;
                    var tween = Tween(begin: begin, end: end)
                        .chain(CurveTween(curve: curve));
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      ListScreen(),
                ),
              );
            },
            child: Row(
              children: [
                Icon(Icons.format_list_bulleted_outlined),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Pomodoro-Goals',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Column(
            spacing: 8,
            children: [
              MainBottomListUnit(
                status: '상태',
                title: '제목',
                goalTime: '목표 시간',
                finalTime: '최종 시간',
              ),
              MainBottomListUnit(
                status: '진행중',
                title: '포모도로1', // 너무 길면 ...으로 바꿔줘야함
                goalTime: '25:00',
                finalTime: '27:18',
              ),
              MainBottomListUnit(
                status: '완료',
                title: '포모도로2', // 너무 길면 ...으로 바꿔줘야함
                goalTime: '25:00',
                finalTime: '27:18',
              ),
              MainBottomListUnit(
                status: '완료',
                title: '포모도로3', // 너무 길면 ...으로 바꿔줘야함
                goalTime: '25:00',
                finalTime: '27:18',
              ),
              MainBottomListUnit(
                status: '완료',
                title: '포모도로4', // 너무 길면 ...으로 바꿔줘야함
                goalTime: '25:00',
                finalTime: '27:18',
              ),
            ],
          )
        ],
      ),
    );
  }
}
