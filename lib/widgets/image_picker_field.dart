import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hw62/widgets/mirror_photos_row.dart';
import 'package:image_picker/image_picker.dart';
import 'add_photo_container.dart';

class ImagePickerField extends StatefulWidget {
  final void Function(File? photo) onPickImage;
  const ImagePickerField({super.key, required this.onPickImage});

  @override
  State<ImagePickerField> createState() => _ImagePickerFieldState();
}

class _ImagePickerFieldState extends State<ImagePickerField> {
  File? selectedPhoto;

  void openImagePicker() async {
    final picker = ImagePicker();
    final photoPicker = await picker.pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.front,
    );
    if (photoPicker == null) {
      return;
    }
    final photo = File(photoPicker.path);
    setState(() {
      selectedPhoto = photo;
    });
    widget.onPickImage(photo);
  }

  void clearPhoto() {
    setState(() {
      selectedPhoto = null;
    });
    widget.onPickImage(null);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return selectedPhoto == null
        ? AddPhotoContainer(onTap: openImagePicker)
        : LayoutBuilder(
          builder: (ctx, constraints) {
            final width = constraints.maxWidth - 35;
            return SizedBox(
              width: width,
              height: width,
              child: Stack(
                children: [
                  MirrorPhotosRow(photo: selectedPhoto!, width: width),
                  Positioned(
                    bottom: 3,
                    right: 3,
                    child: IconButton(
                      onPressed: clearPhoto,
                      icon: Icon(Icons.clear, color: theme.colorScheme.error),
                      style: IconButton.styleFrom(
                        backgroundColor: theme.primaryColor.withValues(
                          alpha: 0.3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
  }
}
