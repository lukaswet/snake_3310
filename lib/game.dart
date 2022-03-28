import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int? upperBoundX, upperBoundY, lowerBoundX, lowerBoundY;
  double? screenWidth, screenHeight;
  int step=20;

  int getNearestTens(int num){
    int output;
    output=(num ~/step)*step;
    if(output==0){
      output +=step;
    }
    return output;
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    lowerBoundY = step;
    lowerBoundX = step;

    upperBoundY = screenHeight!.toInt()-step;
    upperBoundX = screenWidth!.toInt()-step;

    return Scaffold(
      body: Container(
        color: Colors.grey[350],
        child: Stack(
          children: const [

          ],
        ),
      ),
    );
  }
}
