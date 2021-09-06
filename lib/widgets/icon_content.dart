import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String label;

  IconContent({required this.iconData, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
        ),
        const SizedBox(height: 15),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff8e8d98),
          ),
        )
      ],
    );
  }
}
