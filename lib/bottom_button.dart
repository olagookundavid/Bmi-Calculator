import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
    this.text,
    this.ontap, {
    Key? key,
  }) : super(key: key);
  final String text;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFEB1555),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
        height: 80,
        width: double.infinity,
      ),
    );
  }
}
