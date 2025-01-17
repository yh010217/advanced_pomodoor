import 'package:flutter/material.dart';
import 'package:pomodoro_list/screens/main_screen/mid_section/main_button_enum.dart';
import 'package:pomodoro_list/screens/main_screen/mid_section/main_timer.dart';

class MainMid extends StatelessWidget {
  const MainMid({super.key});

  @override
  Widget build(BuildContext context) {
    double midHeight = 280;

    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: midHeight,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: midHeight,
                maxHeight: midHeight,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final double width = constraints.maxWidth;
                  final double height = midHeight;

                  // 원 크기: 가로 세로의 최소값을 기준으로 크기를 설정
                  final double size = width < height ? width : height;
                  return SizedBox(
                    width: size,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomPaint(
                          painter: TimerPainter(
                            progress: 0.35,
                            parentWidth: width,
                            parentHeight: height,
                          ),
                        ),
                        SizedBox(
                          width: width,
                          height: midHeight,
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '포모도로1',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '24 : 12',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Row()
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: size * 0.12,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              120, 158, 158, 158),
                                        ),
                                        child: SizedBox(
                                          width: size * 0.1,
                                          height: size * 0.54,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              120, 158, 158, 158),
                                        ),
                                        child: SizedBox(
                                          width: size * 0.1,
                                          height: size * 0.54,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
          child: Column(
            spacing: 12,
            children: [
              MidRightButtons(
                type: MainButtonEnum.refresh,
              ),
              MidRightButtons(
                type: MainButtonEnum.start,
              ),
              MidRightButtons(
                type: MainButtonEnum.pomodoro,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MidRightButtons extends StatelessWidget {
  final MainButtonEnum type;
  const MidRightButtons({
    super.key,
    required this.type,
  });

  Widget getTypeButton(MainButtonEnum type) {
    switch (type) {
      case MainButtonEnum.pomodoro:
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(
            'assets/icons/pomodoro-filledTomato.png',
            width: 24,
          ),
        );
      case MainButtonEnum.refresh:
        return Icon(
          Icons.restart_alt_rounded,
          size: 32,
        );
      case MainButtonEnum.pause:
        return Icon(
          Icons.pause,
          size: 32,
        );
      case MainButtonEnum.start:
        return Icon(
          Icons.play_arrow_rounded,
          size: 32,
        );
      case MainButtonEnum.stop:
        return Icon(
          Icons.stop_rounded,
          size: 32,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: getTypeButton(type),
        ),
      ),
    );
  }
}
