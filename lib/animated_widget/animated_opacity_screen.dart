import 'package:flutter/material.dart';

class AnimateOpacityWidget extends StatefulWidget {
  const AnimateOpacityWidget({Key? key}) : super(key: key);

  @override
  State<AnimateOpacityWidget> createState() => _AnimateOpacityWidgetState();
}

class _AnimateOpacityWidgetState extends State<AnimateOpacityWidget> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: opacityLevel,
              child: const FlutterLogo(
                size: 50,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacityLevel = opacityLevel == 0 ? 1.0 : 0;
                });
              },
              child: const Text("Fade logo"),
            )
          ],
        ),
      ),
    );
  }
}
