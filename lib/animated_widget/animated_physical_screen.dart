import 'package:flutter/material.dart';

class AnimatedPhysicModelScreen extends StatefulWidget {
  const AnimatedPhysicModelScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicModelScreen> createState() =>
      _AnimatedPhysicModelScreenState();
}

class _AnimatedPhysicModelScreenState extends State<AnimatedPhysicModelScreen> {
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
