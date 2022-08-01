import 'package:flutter/material.dart';

class LinePaintPage extends StatelessWidget {
  const LinePaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        width: 300,
        height: 300,
        child: CustomPaint(
          foregroundPainter: TamGiacPainter(),
          // child: const Text(
          //   "Bố m đây con chai ",
          //   style: TextStyle(color: Colors.cyan),
          // ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;

    canvas.drawLine(Offset(size.width * 1 / 6, size.height * 1 / 2),
        Offset(size.width * 5 / 6, size.height * 1 / 2), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    final a = Offset(size.width * 1 / 4, size.height * 1 / 4);
    final b = Offset(size.width * 3 / 4, size.height * 3 / 4);
    final rect = Rect.fromPoints(a, b);
    Radius radius = const Radius.circular(32);
    canvas.drawRect(rect, paint);
    // vẽ hình tròn bo cạnh
    // canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);
    // a is left top
    //b is bottom right
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    final center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, size.width * 1 / 4, paint);
    // vẽ hình tròn bo cạnh
    // canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);
    // a is left top
    //b is bottom right
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    final arc1 = Path();
    arc1.moveTo(size.width * 0.2, size.height * 0.2);
    arc1.arcToPoint(Offset(size.width * 0.8, size.height * 0.2),
        radius: const Radius.circular(150));
    canvas.drawPath(arc1, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class TamGiacPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    final path = Path();
    // điểm khởi tạo bạn đầu
    path.moveTo(size.width * 1 / 2, size.height * 1 / 4);
    path.lineTo(size.width * 1 / 6, size.height * 3 / 4);
    path.lineTo(size.width * 5 / 6, size.height * 3 / 4);
    // path.lineTo(size.width * 1 / 2, size.height * 1 / 4);
    // nối điểm cuối cùng về điểm đầu tiên của thuật toán paint
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
