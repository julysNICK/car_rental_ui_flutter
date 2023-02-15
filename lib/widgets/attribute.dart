import 'package:flutter/material.dart';

class Attribute extends StatelessWidget {
  const Attribute({
    super.key,
    required this.name,
    required this.value,
    this.color = Colors.white,
  });

  final String name, value;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: color,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            overflow: TextOverflow.clip,
          ),
        ),
        Text(
          name,
          style: TextStyle(
            color: color,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
