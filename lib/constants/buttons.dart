//import 'dart:ffi';

import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
 const TextButtons({super.key, required this.numberOfPoints, required this.onPressedButton});

  final String? numberOfPoints;
  final VoidCallback? onPressedButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(4),
        ),
        child: TextButton(
          onPressed: onPressedButton,
          child: Text(
            numberOfPoints!,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
