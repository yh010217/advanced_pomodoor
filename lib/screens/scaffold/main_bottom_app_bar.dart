import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 6,
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, -6),
              spreadRadius: -8,
              blurRadius: 12,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 0,
          ),
          child: Row(
            children: [
              Flexible(
                child: BottomFlexChildRow(
                    icon: Icon(Icons.calendar_month), text: 'Recoreds'),
              ),
              Flexible(
                flex: 0,
                child: BottomPomodoroButton(),
              ),
              Flexible(
                child: BottomFlexChildRow(
                    icon: Icon(Icons.table_view_outlined), text: 'Lists'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomPomodoroButton extends StatelessWidget {
  const BottomPomodoroButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      decoration: BoxDecoration(
          color: Color(0xFFFC8F77),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(120, 130, 50, 50),
              offset: Offset(2, 3),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset('assets/icons/pomodoro-pomodoro.png'),
      ),
    );
  }
}

class BottomFlexChildRow extends StatelessWidget {
  final Icon icon;
  final String text;
  const BottomFlexChildRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
