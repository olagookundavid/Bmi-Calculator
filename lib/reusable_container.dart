import 'package:flutter/material.dart';

class Reuse extends StatelessWidget {
  const Reuse(this.color, this.cardchild, this.onpress, {Key? key})
      : super(key: key);
  final Widget cardchild;
  final Color color;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
      ),
    );
  }
}
