import 'dart:ui';

import 'package:flutter/material.dart';

class AnimatedTextStyleDefaultScreen extends StatefulWidget {
  const AnimatedTextStyleDefaultScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedTextStyleDefaultScreen> createState() =>
      _AnimatedTextStyleDefaultScreenState();
}

class _AnimatedTextStyleDefaultScreenState
    extends State<AnimatedTextStyleDefaultScreen> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("animated Align"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedDefaultTextStyle(
            style: TextStyle(
              color: selected ? Colors.red : Colors.blue,
              fontSize: selected ? 16 : 40,
            ),
            duration: const Duration(seconds: 2),
            child: const Text("Bố m là nghiện, bố m k biết hút chích"),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}
