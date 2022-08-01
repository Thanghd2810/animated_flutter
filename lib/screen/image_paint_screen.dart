import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

class ImagePaintPage extends StatefulWidget {
  ImagePaintPage({Key? key}) : super(key: key);

  @override
  State<ImagePaintPage> createState() => _ImagePaintPageState();
}

class _ImagePaintPageState extends State<ImagePaintPage> {
  ui.Image? image;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadImage("assets/images/ic_logo_react.png");
  }

  Future loadImage(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final imageTpm = await decodeImageFromList(bytes);
    setState(() {
      image = imageTpm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: image == null
              ? const CircularProgressIndicator()
              : SizedBox(
                  height: 300,
                  width: 300,
                  child: FittedBox(
                    child: SizedBox(
                      height: image!.height.toDouble(),
                      width: image!.width.toDouble(),
                      child: CustomPaint(painter: ImagePainter(image!)),
                    ),
                  ),
                ),
        ));
  }
}

class ImagePainter extends CustomPainter {
  final ui.Image image;

  ImagePainter(this.image);
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();

    canvas.drawImage(image, Offset.zero, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
