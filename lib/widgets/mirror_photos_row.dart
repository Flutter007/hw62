import 'dart:io';
import 'package:flutter/material.dart';
import 'left_part_photo.dart';

class MirrorPhotosRow extends StatelessWidget {
  final File? photo;
  final double width;
  const MirrorPhotosRow({super.key, required this.photo, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LeftPartPhoto(width: width, photo: photo),
        Transform.flip(
          flipX: true,
          child: LeftPartPhoto(width: width, photo: photo),
        ),
      ],
    );
  }
}
