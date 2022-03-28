import 'package:flutter/material.dart';

class Piece extends StatefulWidget {
  const Piece({Key? key, required this.positionX, required this.positionY, required this.size, required this.color}) : super(key: key);
  final int positionX, positionY, size;
  final Color color;

  @override
  _PieceState createState() => _PieceState();
}

class _PieceState extends State<Piece> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: widget.positionY.toDouble(),
        left: widget.positionX.toDouble(),
        child: Opacity(
        opacity: 1,
          child: Container(
            width: widget.size.toDouble(),
            height: widget.size.toDouble(),
            decoration: BoxDecoration(
              color:widget.color,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              border:Border.all(width: 2.0, color: Colors.white),
            ),
          )
    ));
  }
}
