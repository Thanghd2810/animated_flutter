import 'package:flutter/material.dart';

class AnimatedPaddingScreen extends StatefulWidget {
  const AnimatedPaddingScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingScreen> createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  double padValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xin chào tất cả các bạn"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
            onPressed: () {
              setState(() {
                padValue = padValue == 0 ? 100 : 0;
              });
            },
            child: const Text("Change Padding"),
          ),
          Text('Paddding = $padValue'),
          AnimatedPadding(
            duration: const Duration(seconds: 2),
            padding: EdgeInsets.all(padValue),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.orangeAccent,
            ),
          )
        ],
      ),
    );
  }
}
