import 'dart:math';
import 'package:flutter/material.dart';

class LoadingIndicatorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    const segmentCount = 12;
    const sweepAngle = 2 * pi / segmentCount;

    final colors = [
      const Color(0xFF5C9FE3),
      const Color(0xFF5C9FE3),
      const Color(0xFF4177C0),
      const Color(0xFF4177C0),
      const Color(0xFF6154A5),
      const Color(0xFF6154A5),
      const Color(0xFF4A376B),
      const Color(0xFF4A376B),
      Colors.black,
    ];

    for (int i = 0; i < segmentCount; i++) {
      final colorIndex = (i ~/ (segmentCount / colors.length)) % colors.length;
      paint.color = colors[colorIndex];

      final startAngle = sweepAngle * i - pi / 2;
      final segmentLength = radius * 0.4;

      final path = Path()
        ..moveTo(
          center.dx + radius * cos(startAngle),
          center.dy + radius * sin(startAngle),
        )
        ..lineTo(
          center.dx + (radius - segmentLength) * cos(startAngle),
          center.dy + (radius - segmentLength) * sin(startAngle),
        );

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
