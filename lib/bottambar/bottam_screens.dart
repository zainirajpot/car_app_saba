import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final Color color;
  const Screen2({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: color,
        ),
      ),
    );
  }
}
