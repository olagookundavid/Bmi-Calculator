

import 'package:flutter/material.dart';

const textstyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

class ReuseIcon extends StatelessWidget {
  const ReuseIcon(
    this.icon,
    this.label, {
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(height: 15),
        Text(label, style: textstyle),
        
      ],
    );
  }
}
