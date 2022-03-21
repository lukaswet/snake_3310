import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late int upperBoundX, upperBoundY, lowerBoundX, lowerBoundY;
  late double screenWidth, screenHeight;
  int step=20;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    lowerBoundY = step;
    lowerBoundX = step;

    upperBoundY = screenHeight.toInt()-step;
    upperBoundX = screenWidth.toInt()-step;

    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Stack(
          children: const [

          ],
        ),
      ),
    );
  }
}
