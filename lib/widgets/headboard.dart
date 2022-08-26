import 'package:flutter/material.dart';

class Headboard extends StatelessWidget {
  const Headboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: _Header(),
      ),
    );
  }
}

class _Header extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /*  
    final Rect rect =
        Rect.fromCircle(center: const Offset(150.0, 55.0), radius: 180);
    const Gradient gradiente = LinearGradient(
      colors: <Color>[
        Color(0xff1f005c),
        Color(0xff5b0060),
        Color(0xff870160),
        Color(0xffac255e),
        Color(0xffca485c),
        Color(0xffe16b5c),
        Color(0xfff39060),
        Color(0xffffb56b),
      ],
    );
*/
    final paint = Paint();
    //..shader = gradiente.createShader(rect);
    //propiedades
    paint.color = const Color.fromRGBO(255, 128, 0, 0.2);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    //dibujar con el path
    path.moveTo(0, size.height * 0.30);
    //path.lineTo(x, y);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.25,
        size.width * 0.50, size.height * 0.30);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.35, size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
