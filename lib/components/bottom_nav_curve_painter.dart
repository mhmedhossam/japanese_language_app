import 'package:flutter/material.dart';

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter({
    this.backgroundColor = const Color.fromARGB(
      255,
      246,
      242,
      242,
    ), //ssssssssss
    this.insetRadius = 35,
  });

  Color backgroundColor;
  double insetRadius;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    Path path = Path()..moveTo(0, 12);

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;
    double transitionToInsetCurveWidth = size.width * .05;

    path.quadraticBezierTo(
      size.width * 0.20,
      0,
      insetCurveBeginnningX - transitionToInsetCurveWidth,
      0,
    );

    path.quadraticBezierTo(
      insetCurveBeginnningX,
      0,
      insetCurveBeginnningX,
      insetRadius / 2,
    );

    path.arcToPoint(
      Offset(insetCurveEndX, insetRadius / 2),
      radius: const Radius.circular(10.0),
      clockwise: false,
    );

    path.quadraticBezierTo(
      insetCurveEndX,
      0,
      insetCurveEndX + transitionToInsetCurveWidth,
      0,
    );

    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 12);
    path.lineTo(size.width, size.height + 56);
    path.lineTo(0, size.height + 56);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
