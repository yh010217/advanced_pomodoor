import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: PomodoroTimer()));
}

class PomodoroTimer extends StatefulWidget {
  const PomodoroTimer({super.key});

  @override
  State<PomodoroTimer> createState() => _PomodoroTimerState();
}

class _PomodoroTimerState extends State<PomodoroTimer> {
  double progress = 0.5; // 현재 진행도 (예: 25%)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pomodoro Timer')),
      body: Center(
        child: CustomPaint(
          size: const Size(200, 200), // 고리 크기 설정
          painter: TimerPainter(
            progress: progress,
            parentWidth: 200,
            parentHeight: 200,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // 진행도 업데이트 (테스트용)
            progress += 0.1;
            if (progress > 1.0) progress = 0.0;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class TimerPainter extends CustomPainter {
  final double progress; // 진행도 (0.0 ~ 1.0)
  final double parentWidth;
  final double parentHeight;

  TimerPainter({
    required this.progress,
    required this.parentWidth,
    required this.parentHeight,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double minWidthHeight =
        parentHeight < parentWidth ? parentHeight : parentWidth;
    double strokeWidth = minWidthHeight / 12; // 고리 두께
    double radius = minWidthHeight / 2 - strokeWidth / 2; // 원의 반지름
    Offset center = Offset(parentWidth / 2, 140); // 원의 중심

    // 회색 고리 (전체)
    Paint backgroundPaint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    // 빨간색 고리 (진행 부분)
    Paint progressPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round; // 끝부분 둥글게

    // 회색 고리 그리기
    canvas.drawCircle(center, radius, backgroundPaint);

    // 진행 부분 그리기 (호)
    double sweepAngle = 2 * 3.141592653589793 * progress; // 진행각도
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -3.141592653589793 / 2, // 시작 각도 (위쪽)
      sweepAngle, // 진행 각도
      false, // 원 내부를 채우지 않음
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant TimerPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
