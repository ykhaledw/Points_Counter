//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextButtons extends StatelessWidget {
  TextButtons({required this.numberOfPoints, required this.onPressedButton});

  String? numberOfPoints;
  VoidCallback? onPressedButton;

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
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
