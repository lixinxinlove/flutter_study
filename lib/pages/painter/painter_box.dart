import 'package:flutter/material.dart';

class PainterBox extends CustomPainter {
  final Paint _bgPainter = Paint()..color = Colors.grey.withOpacity(0.49);
  final Paint _mainPainter = Paint()..color = Colors.blue;

  @override
  void paint(Canvas canvas, Size size) {
    print(size);
    canvas.drawRect(Offset.zero & size, _bgPainter);
    canvas.drawCircle(Offset.zero, 10, _mainPainter);
    canvas.drawCircle(const Offset(100,100), 50, _mainPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
