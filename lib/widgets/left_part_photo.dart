import 'dart:io';
import 'package:flutter/material.dart';

class LeftPartPhoto extends StatelessWidget {
  final File? photo;
  final double width;
  const LeftPartPhoto({super.key, this.photo, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width / 2,
      height: width,
      child: Image.file(
        photo!,
        alignment: Alignment.topLeft,
        fit: BoxFit.cover,
      ),
    );
  }
}
