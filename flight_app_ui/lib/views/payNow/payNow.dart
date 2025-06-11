import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class PayNowView extends StatelessWidget {
  const PayNowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 100,
                width: 500,
                child: CustomPaint(painter: curvedPainter()),
              ),
              Positioned(
                top: 40,
                left: 100,
               child: Image.asset('assets/icon/plan2.png', height: 35, width: 35, fit: BoxFit.cover),
              ),
              Positioned(
                top: 70,
                right: 0,
                left: 0,
                bottom: 0,
                child: Row(
                  children: [
                    Icon(Icons.location_city, size: 50, color: Colors.black),
                    Spacer(),
                    Icon(Icons.location_city, size: 50, color: Colors.black),
                  ],
                ),

              ),
            ],
          ),
        ],
      ),
    );
  }
}

class curvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    // Create a path that defines the curved shape
    double h = size.height;
    double w = size.width;

    var startPoint = Offset(30, h);
    var controlPoint1 = Offset(w / 4, h / 4); // Gentle curve
    var controlPoint2 = Offset(w * 3 / 4, h / 4);

    var endPoint = Offset(w - 30, h);

    final path = Path();
    path.moveTo(startPoint.dx, startPoint.dy);
    path.cubicTo(
      controlPoint1.dx,
      controlPoint1.dy,
      controlPoint2.dx,
      controlPoint2.dy,
      endPoint.dx,
      endPoint.dy,
    );
    var carvePath = dashPath(
      path,
      dashArray: CircularIntervalList<double>([5, 5]),
    );
    canvas.drawPath(carvePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
